
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROCESS_MEMORY_COUNTERS ;


 int GetCurrentProcess () ;
 int GetProcessMemoryInfo (int ,int *,int) ;

__attribute__((used)) static inline bool
os_get_proc_memory_usage_internal(PROCESS_MEMORY_COUNTERS *pmc)
{
 if (!GetProcessMemoryInfo(GetCurrentProcess(), pmc, sizeof(*pmc)))
  return 0;
 return 1;
}
