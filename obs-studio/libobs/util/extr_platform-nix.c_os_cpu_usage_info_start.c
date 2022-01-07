
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tms {int tms_utime; int tms_stime; } ;
struct os_cpu_usage_info {int core_count; int last_user_time; int last_sys_time; int last_cpu_time; } ;
typedef struct os_cpu_usage_info os_cpu_usage_info_t ;


 int _SC_NPROCESSORS_ONLN ;
 struct os_cpu_usage_info* bmalloc (int) ;
 int sysconf (int ) ;
 int times (struct tms*) ;

os_cpu_usage_info_t *os_cpu_usage_info_start(void)
{
 struct os_cpu_usage_info *info = bmalloc(sizeof(*info));
 struct tms time_sample;

 info->last_cpu_time = times(&time_sample);
 info->last_sys_time = time_sample.tms_stime;
 info->last_user_time = time_sample.tms_utime;
 info->core_count = sysconf(_SC_NPROCESSORS_ONLN);
 return info;
}
