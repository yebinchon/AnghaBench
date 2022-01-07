
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int core_count_initialized ;
 int logical_cores ;
 int os_get_cores_internal () ;

int os_get_logical_cores(void)
{
 if (!core_count_initialized)
  os_get_cores_internal();
 return logical_cores;
}
