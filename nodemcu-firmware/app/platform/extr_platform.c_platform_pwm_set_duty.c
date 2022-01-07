
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DUTY (int ) ;
 int NORMAL_DUTY (int ) ;
 unsigned int NUM_PWM ;
 int pwm_exist (unsigned int) ;
 int pwm_get_duty (unsigned int) ;
 int pwm_set_duty (int ,unsigned int) ;
 int pwm_start () ;
 int * pwms_duty ;

uint32_t platform_pwm_set_duty( unsigned pin, uint32_t duty )
{

  if ( pin < NUM_PWM)
  {
    if(!pwm_exist(pin))
      return 0;
    pwm_set_duty(DUTY(duty), pin);
  } else {
    return 0;
  }
  pwm_start();
  pwms_duty[pin] = NORMAL_DUTY(pwm_get_duty(pin));
  return pwms_duty[pin];
}
