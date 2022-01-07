
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MEMORYSTATUSEX ;


 int GlobalMemoryStatusEx (int *) ;

__attribute__((used)) static inline bool os_get_sys_memory_usage_internal(MEMORYSTATUSEX *msex)
{
 if (!GlobalMemoryStatusEx(msex))
  return 0;
 return 1;
}
