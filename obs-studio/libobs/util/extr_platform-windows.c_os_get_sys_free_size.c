
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int member_0; int ullAvailPhys; } ;
typedef TYPE_1__ MEMORYSTATUSEX ;


 int os_get_sys_memory_usage_internal (TYPE_1__*) ;

uint64_t os_get_sys_free_size(void)
{
 MEMORYSTATUSEX msex = {sizeof(MEMORYSTATUSEX)};
 if (!os_get_sys_memory_usage_internal(&msex))
  return 0;
 return msex.ullAvailPhys;
}
