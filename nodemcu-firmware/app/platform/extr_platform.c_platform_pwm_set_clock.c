
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;


 unsigned int NUM_PWM ;
 int pwm_exist (unsigned int) ;
 int pwm_get_freq (unsigned int) ;
 int pwm_set_freq (int ,unsigned int) ;
 int pwm_start () ;

uint32_t platform_pwm_set_clock( unsigned pin, uint32_t clock )
{

  if( pin >= NUM_PWM)
    return 0;
  if(!pwm_exist(pin))
    return 0;

  pwm_set_freq((uint16_t)clock, pin);
  pwm_start();
  return (uint32_t)pwm_get_freq( pin );
}
