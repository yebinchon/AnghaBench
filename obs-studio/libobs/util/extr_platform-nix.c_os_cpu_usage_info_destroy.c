
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_cpu_usage_info_t ;


 int bfree (int *) ;

void os_cpu_usage_info_destroy(os_cpu_usage_info_t *info)
{
 if (info)
  bfree(info);
}
