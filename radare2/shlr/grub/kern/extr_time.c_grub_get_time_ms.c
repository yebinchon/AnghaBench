
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_uint64_t ;


 int get_time_ms_func () ;

grub_uint64_t
grub_get_time_ms (void)
{
  return get_time_ms_func ();
}
