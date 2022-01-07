
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XSTATE_PKRU_BIT ;
 int __cpuid (unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int printf (char*) ;

int pkru_xstate_offset(void)
{
 unsigned int eax;
 unsigned int ebx;
 unsigned int ecx;
 unsigned int edx;
 int xstate_offset;
 int xstate_size;
 unsigned long XSTATE_CPUID = 0xd;
 int leaf;


 leaf = XSTATE_PKRU_BIT;
 {
  eax = XSTATE_CPUID;
  ecx = leaf;
  __cpuid(&eax, &ebx, &ecx, &edx);

  if (leaf == XSTATE_PKRU_BIT) {
   xstate_offset = ebx;
   xstate_size = eax;
  }
 }

 if (xstate_size == 0) {
  printf("could not find size/offset of PKRU in xsave state\n");
  return 0;
 }

 return xstate_offset;
}
