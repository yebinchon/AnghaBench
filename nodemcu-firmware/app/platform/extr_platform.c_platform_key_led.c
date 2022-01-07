
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int gpio16_input_conf () ;
 int gpio16_input_get () ;
 int gpio16_output_conf () ;
 int gpio16_output_set (int) ;

uint8_t platform_key_led( uint8_t level){
  uint8_t temp;
  gpio16_output_set(1);
  gpio16_input_conf();
  temp = gpio16_input_get();
  gpio16_output_conf();
  gpio16_output_set(level);
  return temp;
}
