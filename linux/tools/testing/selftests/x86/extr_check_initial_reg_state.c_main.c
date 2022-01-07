
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHOW (scalar_t__) ;
 scalar_t__ ax ;
 scalar_t__ bp ;
 scalar_t__ bx ;
 scalar_t__ cx ;
 scalar_t__ di ;
 scalar_t__ dx ;
 int flags ;
 int printf (char*,...) ;
 scalar_t__ r10 ;
 scalar_t__ r11 ;
 scalar_t__ r12 ;
 scalar_t__ r13 ;
 scalar_t__ r14 ;
 scalar_t__ r15 ;
 scalar_t__ r8 ;
 scalar_t__ r9 ;
 scalar_t__ si ;
 scalar_t__ sp ;

int main()
{
 int nerrs = 0;

 if (sp == 0) {
  printf("[FAIL]\tTest was built incorrectly\n");
  return 1;
 }

 if (ax || bx || cx || dx || si || di || bp

     || r8 || r9 || r10 || r11 || r12 || r13 || r14 || r15

  ) {
  printf("[FAIL]\tAll GPRs except SP should be 0\n");

  printf("\t" "ax" " = 0x%lx\n", ax);;
  printf("\t" "bx" " = 0x%lx\n", bx);;
  printf("\t" "cx" " = 0x%lx\n", cx);;
  printf("\t" "dx" " = 0x%lx\n", dx);;
  printf("\t" "si" " = 0x%lx\n", si);;
  printf("\t" "di" " = 0x%lx\n", di);;
  printf("\t" "bp" " = 0x%lx\n", bp);;
  printf("\t" "sp" " = 0x%lx\n", sp);;

  printf("\t" "r8" " = 0x%lx\n", r8);;
  printf("\t" "r9" " = 0x%lx\n", r9);;
  printf("\t" "r10" " = 0x%lx\n", r10);;
  printf("\t" "r11" " = 0x%lx\n", r11);;
  printf("\t" "r12" " = 0x%lx\n", r12);;
  printf("\t" "r13" " = 0x%lx\n", r13);;
  printf("\t" "r14" " = 0x%lx\n", r14);;
  printf("\t" "r15" " = 0x%lx\n", r15);;

  nerrs++;
 } else {
  printf("[OK]\tAll GPRs except SP are 0\n");
 }

 if (flags != 0x202) {
  printf("[FAIL]\tFLAGS is 0x%lx, but it should be 0x202\n", flags);
  nerrs++;
 } else {
  printf("[OK]\tFLAGS is 0x202\n");
 }

 return nerrs ? 1 : 0;
}
