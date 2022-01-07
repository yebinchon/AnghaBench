
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pst_dynamic {int psd_proc_cnt; } ;
typedef int pst ;
typedef int cpus ;


 int CTL_HW ;
 int HW_NCPU ;
 int _SC_NPROCESSORS_ONLN ;
 int _SC_NPROC_ONLN ;
 int pstat_getdynamic (struct pst_dynamic*,int,int,int ) ;
 long sysconf (int ) ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;

extern uint32_t
tuklib_cpucores(void)
{
 uint32_t ret = 0;
 return ret;
}
