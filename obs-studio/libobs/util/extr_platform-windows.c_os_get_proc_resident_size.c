
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int member_0; int WorkingSetSize; } ;
typedef TYPE_1__ PROCESS_MEMORY_COUNTERS ;


 int os_get_proc_memory_usage_internal (TYPE_1__*) ;

uint64_t os_get_proc_resident_size(void)
{
 PROCESS_MEMORY_COUNTERS pmc = {sizeof(PROCESS_MEMORY_COUNTERS)};
 if (!os_get_proc_memory_usage_internal(&pmc))
  return 0;
 return pmc.WorkingSetSize;
}
