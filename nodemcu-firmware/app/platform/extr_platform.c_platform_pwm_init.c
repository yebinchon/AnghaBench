
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUTY (int ) ;
 int NUM_PWM ;
 int pwm_init (int,int *) ;
 int * pwms_duty ;

void platform_pwm_init()
{
  int i;
  for(i=0;i<NUM_PWM;i++){
    pwms_duty[i] = DUTY(0);
  }
  pwm_init(500, ((void*)0));

}
