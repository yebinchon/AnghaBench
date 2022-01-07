
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int initialized; int eax; scalar_t__ ebx; } ;
typedef TYPE_1__ zend_cpu_info ;


 int __zend_cpuid (int,int ,TYPE_1__*) ;
 TYPE_1__ cpuinfo ;

void zend_cpu_startup(void)
{
 if (!cpuinfo.initialized) {
  zend_cpu_info ebx;
  int max_feature;

  cpuinfo.initialized = 1;
  __zend_cpuid(0, 0, &cpuinfo);
  max_feature = cpuinfo.eax;
  if (max_feature == 0) {
   return;
  }

  __zend_cpuid(1, 0, &cpuinfo);


  if (max_feature >= 7) {
   __zend_cpuid(7, 0, &ebx);
   cpuinfo.ebx = ebx.ebx;
  } else {
   cpuinfo.ebx = 0;
  }
 }
}
