
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_FAIL ;
 int TEST_PASS ;
 int VEC_MAX ;
 int VSX_MAX ;
 int printf (char*,int,unsigned long,int,unsigned long) ;

int compare_vsx_vmx(unsigned long *store, unsigned long *load)
{
 int i;

 for (i = 0; i < VSX_MAX; i++) {
  if (store[1 + 2 * i] != load[1 + 2 * i]) {
   printf("store[%d]: %lx load[%d] %lx\n",
     1 + 2 * i, store[i],
     1 + 2 * i, load[i]);
   return TEST_FAIL;
  }
 }
 for (i = 64; i < VEC_MAX; i++) {
  if (!(i % 2) && (store[i] != load[i+1])) {
   printf("store[%d]: %lx load[%d] %lx\n",
     i, store[i], i+1, load[i+1]);
   return TEST_FAIL;
  }
  if ((i % 2) && (store[i] != load[i-1])) {
   printf("here store[%d]: %lx load[%d] %lx\n",
     i, store[i], i-1, load[i-1]);
   return TEST_FAIL;
  }
 }

 return TEST_PASS;
}
