
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ADC0_SC3 ;
 unsigned int analog_config_bits ;
 int analog_init () ;
 unsigned int analog_right_shift ;
 scalar_t__ calibrating ;

void analogReadRes(unsigned int bits)
{
 unsigned int config;

 if (bits >= 13) {
  if (bits > 16) bits = 16;
  config = 16;
 } else if (bits >= 11) {
  config = 12;
 } else if (bits >= 9) {
  config = 10;
 } else {
  config = 8;
 }
 analog_right_shift = config - bits;
 if (config != analog_config_bits) {
  analog_config_bits = config;
  if (calibrating) ADC0_SC3 = 0;
  analog_init();
 }
}
