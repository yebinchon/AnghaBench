
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnal ;


 char* strdup (char*) ;

__attribute__((used)) static char *get_reg_profile(RAnal *anal) {
 return strdup (
  "=PC	pc\n"
  "=BP	brk\n"
  "=SP	ptr\n"
  "=A0	rax\n"
  "=A1	rbx\n"
  "=A2	rcx\n"
  "=A3	rdx\n"
  "gpr	ptr	.32	0	0\n"
  "gpr	pc	.32	4	0\n"
  "gpr	brk	.32	8	0\n"
  "gpr	scr	.32	12	0\n"
  "gpr	kbd	.32	16	0\n"
 );
}
