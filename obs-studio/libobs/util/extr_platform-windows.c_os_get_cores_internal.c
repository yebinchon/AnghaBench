
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_5__ {scalar_t__ Relationship; int ProcessorMask; } ;
typedef TYPE_1__* PSYSTEM_LOGICAL_PROCESSOR_INFORMATION ;
typedef int DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetLogicalProcessorInformation (TYPE_1__*,int*) ;
 scalar_t__ RelationProcessorCore ;
 int core_count_initialized ;
 int free (TYPE_1__*) ;
 int logical_cores ;
 TYPE_1__* malloc (int) ;
 scalar_t__ num_logical_cores (int ) ;
 int physical_cores ;

__attribute__((used)) static void os_get_cores_internal(void)
{
 PSYSTEM_LOGICAL_PROCESSOR_INFORMATION info = ((void*)0), temp = ((void*)0);
 DWORD len = 0;

 if (core_count_initialized)
  return;

 core_count_initialized = 1;

 GetLogicalProcessorInformation(info, &len);
 if (GetLastError() != ERROR_INSUFFICIENT_BUFFER)
  return;

 info = malloc(len);

 if (GetLogicalProcessorInformation(info, &len)) {
  DWORD num = len / sizeof(*info);
  temp = info;

  for (DWORD i = 0; i < num; i++) {
   if (temp->Relationship == RelationProcessorCore) {
    ULONG_PTR mask = temp->ProcessorMask;

    physical_cores++;
    logical_cores += num_logical_cores(mask);
   }

   temp++;
  }
 }

 free(info);
}
