
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_inhibit_t ;


 int bfree (int *) ;
 int os_inhibit_sleep_set_active (int *,int) ;

void os_inhibit_sleep_destroy(os_inhibit_t *info)
{
 if (info) {
  os_inhibit_sleep_set_active(info, 0);
  bfree(info);
 }
}
