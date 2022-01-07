
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLATFORM_OK ;
 int cmn_platform_init () ;
 int get_pin_map () ;

int platform_init()
{

  get_pin_map();

  cmn_platform_init();

  return PLATFORM_OK;
}
