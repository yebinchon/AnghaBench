
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jmpbuf ;
 int printf (char*,...) ;
 int segv_err ;
 scalar_t__ sigsetjmp (int ,int) ;
 scalar_t__ vsyscall_map_r ;

__attribute__((used)) static int test_vsys_r(void)
{

 printf("[RUN]\tChecking read access to the vsyscall page\n");
 bool can_read;
 if (sigsetjmp(jmpbuf, 1) == 0) {
  *(volatile int *)0xffffffffff600000;
  can_read = 1;
 } else {
  can_read = 0;
 }

 if (can_read && !vsyscall_map_r) {
  printf("[FAIL]\tWe have read access, but we shouldn't\n");
  return 1;
 } else if (!can_read && vsyscall_map_r) {
  printf("[FAIL]\tWe don't have read access, but we should\n");
  return 1;
 } else if (can_read) {
  printf("[OK]\tWe have read access\n");
 } else {
  printf("[OK]\tWe do not have read access: #PF(0x%lx)\n",
         segv_err);
 }


 return 0;
}
