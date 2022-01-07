
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qsv_cpu_platform { ____Placeholder_qsv_cpu_platform } qsv_cpu_platform ;


 int QSV_CPU_PLATFORM_SKL ;
 int qsv_get_cpu_platform () ;

__attribute__((used)) static inline bool is_skl_or_greater_platform()
{
 enum qsv_cpu_platform plat = qsv_get_cpu_platform();
 return (plat >= QSV_CPU_PLATFORM_SKL);
}
