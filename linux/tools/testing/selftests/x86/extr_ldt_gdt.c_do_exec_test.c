
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_desc {int limit; int seg_32bit; int contents; int useable; int seg_not_present; int limit_in_pages; int read_exec_only; int base_addr; int entry_number; } ;
typedef scalar_t__ pid_t ;


 int AR_DB ;
 int AR_DPL3 ;
 int AR_P ;
 int AR_S ;
 int AR_TYPE_XRCODE ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int execl (char*,char*,int *) ;
 int exit (int) ;
 scalar_t__ fork () ;
 int install_valid (struct user_desc*,int) ;
 int nerrs ;
 int printf (char*) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static void do_exec_test(void)
{
 printf("[RUN]\tTest exec\n");

 struct user_desc desc = {
  .entry_number = 0,
  .base_addr = 0,
  .limit = 42,
  .seg_32bit = 1,
  .contents = 2,
  .read_exec_only = 0,
  .limit_in_pages = 0,
  .seg_not_present = 0,
  .useable = 0
 };
 install_valid(&desc, AR_DPL3 | AR_TYPE_XRCODE | AR_S | AR_P | AR_DB);

 pid_t child = fork();
 if (child == 0) {
  execl("/proc/self/exe", "ldt_gdt_test_exec", ((void*)0));
  printf("[FAIL]\tCould not exec self\n");
  exit(1);
 } else {
  int status;
  if (waitpid(child, &status, 0) != child ||
      !WIFEXITED(status)) {
   printf("[FAIL]\tChild died\n");
   nerrs++;
  } else if (WEXITSTATUS(status) != 0) {
   printf("[FAIL]\tChild failed\n");
   nerrs++;
  } else {
   printf("[OK]\tChild succeeded\n");
  }
 }
}
