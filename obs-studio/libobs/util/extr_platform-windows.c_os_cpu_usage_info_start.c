
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ft; } ;
struct TYPE_7__ {int ft; } ;
struct TYPE_6__ {int ft; } ;
struct os_cpu_usage_info {int core_count; TYPE_3__ last_user_time; TYPE_2__ last_sys_time; TYPE_1__ last_time; } ;
typedef struct os_cpu_usage_info os_cpu_usage_info_t ;
struct TYPE_9__ {int dwNumberOfProcessors; } ;
typedef TYPE_4__ SYSTEM_INFO ;
typedef int FILETIME ;


 int GetCurrentProcess () ;
 int GetProcessTimes (int ,int *,int *,int *,int *) ;
 int GetSystemInfo (TYPE_4__*) ;
 int GetSystemTimeAsFileTime (int *) ;
 struct os_cpu_usage_info* bzalloc (int) ;

os_cpu_usage_info_t *os_cpu_usage_info_start(void)
{
 struct os_cpu_usage_info *info = bzalloc(sizeof(*info));
 SYSTEM_INFO si;
 FILETIME dummy;

 GetSystemInfo(&si);
 GetSystemTimeAsFileTime(&info->last_time.ft);
 GetProcessTimes(GetCurrentProcess(), &dummy, &dummy,
   &info->last_sys_time.ft, &info->last_user_time.ft);
 info->core_count = si.dwNumberOfProcessors;

 return info;
}
