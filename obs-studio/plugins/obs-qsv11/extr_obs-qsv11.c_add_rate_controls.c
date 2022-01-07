
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qsv_rate_control_info {scalar_t__ name; int haswell_or_greater; } ;
typedef int obs_property_t ;
typedef enum qsv_cpu_platform { ____Placeholder_qsv_cpu_platform } qsv_cpu_platform ;


 int QSV_CPU_PLATFORM_HSW ;
 int obs_property_list_add_string (int *,scalar_t__,scalar_t__) ;
 int qsv_get_cpu_platform () ;

__attribute__((used)) static inline void add_rate_controls(obs_property_t *list,
         const struct qsv_rate_control_info *rc)
{
 enum qsv_cpu_platform plat = qsv_get_cpu_platform();
 while (rc->name) {
  if (!rc->haswell_or_greater || plat >= QSV_CPU_PLATFORM_HSW)
   obs_property_list_add_string(list, rc->name, rc->name);
  rc++;
 }
}
