%% LABORATORUM SRMan
% ĆWICZENIE 3 - Schemat sterowania z niezależnymi regulatorami osi i
%               kompensacją oddziaływania grawitacyjnego
% 
% Funkcja obliczająca G1
%% ZADANIE 3.1
%---- • Dla manipulatora PM2R zaimplementować częściowo scentralizowany
%----   sterownik PID+FF+G zgodnie z równaniami (30), (15), (17), (31) i (32) – 
%----   patrz rys. 6. Przeprowadzić parametryczną syntezę bloków PID sterownika 
%----   korzystając z równań (25) pamiętając o ogólnych zasadach projektowych (24).


%---- • NOTATKI
% 
function tau_G2 = ZAD3_1_G2(input)

q_m1 = input(1);
q_m2 = input(2);

global eta1 eta2 m2 g L2

tau_G2 = eta2*(m2*L2*g*cos(eta1*q_m1 + eta2*q_m2));
