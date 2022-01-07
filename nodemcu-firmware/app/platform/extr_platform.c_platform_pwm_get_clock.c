
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 unsigned int NUM_PWM ;
 int pwm_exist (unsigned int) ;
 int pwm_get_freq (unsigned int) ;

uint32_t platform_pwm_get_clock( unsigned pin )
{

  if( pin >= NUM_PWM)
    return 0;
  if(!pwm_exist(pin))
    return 0;

  return (uint32_t)pwm_get_freq(pin);
}
