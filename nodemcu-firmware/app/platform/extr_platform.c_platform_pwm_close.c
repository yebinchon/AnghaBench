
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NUM_PWM ;
 int pwm_delete (unsigned int) ;
 int pwm_start () ;

void platform_pwm_close( unsigned pin )
{

  if ( pin < NUM_PWM)
  {
    pwm_delete(pin);
    pwm_start();
  }
}
