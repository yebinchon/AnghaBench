
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_FAIL ;
 int TEST_PASS ;
 int printf (char*,int,unsigned long,unsigned long) ;

int validate_fpr(unsigned long *fpr, unsigned long val)
{
 int i, found = 1;

 for (i = 0; i < 32; i++) {
  if (fpr[i] != val) {
   printf("FPR[%d]: %lx Expected: %lx\n", i, fpr[i], val);
   found = 0;
  }
 }

 if (!found)
  return TEST_FAIL;
 return TEST_PASS;
}
