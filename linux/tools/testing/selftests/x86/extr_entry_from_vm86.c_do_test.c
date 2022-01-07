
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long eip; } ;
struct vm86plus_struct {TYPE_1__ regs; } ;


 scalar_t__ ENOSYS ;
 scalar_t__ EPERM ;
 unsigned int VM86_ARG (long) ;
 int VM86_ENTER ;
 unsigned int VM86_INTx ;
 unsigned int VM86_SIGNAL ;
 unsigned int VM86_STI ;
 unsigned int VM86_TRAP ;
 unsigned int VM86_TYPE (long) ;
 unsigned int VM86_UNKNOWN ;
 scalar_t__ errno ;
 int nerrs ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;
 long vm86 (int ,struct vm86plus_struct*) ;

__attribute__((used)) static bool do_test(struct vm86plus_struct *v86, unsigned long eip,
      unsigned int rettype, unsigned int retarg,
      const char *text)
{
 long ret;

 printf("[RUN]\t%s from vm86 mode\n", text);
 v86->regs.eip = eip;
 ret = vm86(VM86_ENTER, v86);

 if (ret == -1 && (errno == ENOSYS || errno == EPERM)) {
  printf("[SKIP]\tvm86 %s\n",
         errno == ENOSYS ? "not supported" : "not allowed");
  return 0;
 }

 if (VM86_TYPE(ret) == VM86_INTx) {
  char trapname[32];
  int trapno = VM86_ARG(ret);
  if (trapno == 13)
   strcpy(trapname, "GP");
  else if (trapno == 5)
   strcpy(trapname, "BR");
  else if (trapno == 14)
   strcpy(trapname, "PF");
  else
   sprintf(trapname, "%d", trapno);

  printf("[INFO]\tExited vm86 mode due to #%s\n", trapname);
 } else if (VM86_TYPE(ret) == VM86_UNKNOWN) {
  printf("[INFO]\tExited vm86 mode due to unhandled GP fault\n");
 } else if (VM86_TYPE(ret) == VM86_TRAP) {
  printf("[INFO]\tExited vm86 mode due to a trap (arg=%ld)\n",
         VM86_ARG(ret));
 } else if (VM86_TYPE(ret) == VM86_SIGNAL) {
  printf("[INFO]\tExited vm86 mode due to a signal\n");
 } else if (VM86_TYPE(ret) == VM86_STI) {
  printf("[INFO]\tExited vm86 mode due to STI\n");
 } else {
  printf("[INFO]\tExited vm86 mode due to type %ld, arg %ld\n",
         VM86_TYPE(ret), VM86_ARG(ret));
 }

 if (rettype == -1 ||
     (VM86_TYPE(ret) == rettype && VM86_ARG(ret) == retarg)) {
  printf("[OK]\tReturned correctly\n");
 } else {
  printf("[FAIL]\tIncorrect return reason (started at eip = 0x%lx, ended at eip = 0x%lx)\n", eip, v86->regs.eip);
  nerrs++;
 }

 return 1;
}
