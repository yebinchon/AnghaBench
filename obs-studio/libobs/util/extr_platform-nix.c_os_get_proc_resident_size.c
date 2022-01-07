
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int resident_size; } ;
typedef TYPE_1__ statm_t ;


 int os_get_proc_memory_usage_internal (TYPE_1__*) ;

uint64_t os_get_proc_resident_size(void)
{
 statm_t statm = {};
 if (!os_get_proc_memory_usage_internal(&statm))
  return 0;
 return (uint64_t)statm.resident_size;
}
