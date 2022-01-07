
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sigma_delta_set_prescale_target (int,int) ;

void platform_sigma_delta_set_pwmduty( uint8_t duty )
{
  uint8_t target = 0, prescale = 0;

  target = duty > 128 ? 256 - duty : duty;
  prescale = target == 0 ? 0 : target-1;


  sigma_delta_set_prescale_target( prescale, duty );
}
