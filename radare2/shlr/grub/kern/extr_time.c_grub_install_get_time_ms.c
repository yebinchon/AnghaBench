
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int get_time_ms_func_t ;


 int get_time_ms_func ;

void
grub_install_get_time_ms (get_time_ms_func_t func)
{
  get_time_ms_func = func;
}
