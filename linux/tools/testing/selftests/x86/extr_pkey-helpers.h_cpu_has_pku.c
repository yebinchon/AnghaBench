
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int X86_FEATURE_OSPKE ;
 unsigned int X86_FEATURE_PKU ;
 int __cpuid (unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int dprintf2 (char*) ;

__attribute__((used)) static inline int cpu_has_pku(void)
{
 unsigned int eax;
 unsigned int ebx;
 unsigned int ecx;
 unsigned int edx;

 eax = 0x7;
 ecx = 0x0;
 __cpuid(&eax, &ebx, &ecx, &edx);

 if (!(ecx & X86_FEATURE_PKU)) {
  dprintf2("cpu does not have PKU\n");
  return 0;
 }
 if (!(ecx & X86_FEATURE_OSPKE)) {
  dprintf2("cpu does not have OSPKE\n");
  return 0;
 }
 return 1;
}
