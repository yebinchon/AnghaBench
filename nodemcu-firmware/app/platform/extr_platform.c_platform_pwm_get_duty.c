
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 unsigned int NUM_PWM ;
 int pwm_exist (unsigned int) ;
 int * pwms_duty ;

uint32_t platform_pwm_get_duty( unsigned pin )
{

  if( pin < NUM_PWM){
    if(!pwm_exist(pin))
      return 0;

    return pwms_duty[pin];
  }
  return 0;
}
