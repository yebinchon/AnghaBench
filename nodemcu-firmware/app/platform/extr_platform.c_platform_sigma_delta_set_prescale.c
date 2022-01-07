
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sigma_delta_set_prescale_target (int ,int) ;

void platform_sigma_delta_set_prescale( uint8_t prescale )
{
  sigma_delta_set_prescale_target( prescale, -1 );
}
