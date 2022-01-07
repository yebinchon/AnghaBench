
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_FAIL ;
 int TEST_PASS ;
 int VMX_MAX ;
 int printf (char*,int,unsigned long,int,unsigned long) ;

int validate_vmx(unsigned long vmx[][2], unsigned long *load)
{
 int i;

 for (i = 0; i < VMX_MAX; i++) {
  if ((vmx[i][0] != load[65 + 2 * i]) ||
    (vmx[i][1] != load[64 + 2 * i])) {
   printf("vmx[%d][0]: %lx load[%d] %lx\n",
     i, vmx[i][0], 65 + 2 * i,
     load[65 + 2 * i]);
   printf("vmx[%d][1]: %lx load[%d] %lx\n",
     i, vmx[i][1], 64 + 2 * i,
     load[64 + 2 * i]);
   return TEST_FAIL;
  }

 }
 return TEST_PASS;
}
