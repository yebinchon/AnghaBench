
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NUM_PWM ;
 int pwm_exist (unsigned int) ;
 int pwm_set_duty (int ,unsigned int) ;
 int pwm_start () ;

void platform_pwm_stop( unsigned pin )
{

  if ( pin < NUM_PWM)
  {
    if(!pwm_exist(pin))
      return;
    pwm_set_duty(0, pin);
    pwm_start();
  }
}
