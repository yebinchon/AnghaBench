
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg; } ;
typedef TYPE_1__ RAnal ;


 int r_reg_set_profile_string (int ,char*) ;

__attribute__((used)) static int set_reg_profile(RAnal *anal) {
 char *p =
  "=PC	r15\n"
  "=LR	r14\n"
  "=SP	r13\n"
  "=BP	r12\n"
  "=A0	r0\n"
  "=A1	r1\n"
  "=A2	r2\n"
  "=A3	r3\n"
  "=SN	r0\n"
  "gpr	sb	.32	36	0\n"
  "gpr	sl	.32	40	0\n"
  "gpr	fp	.32	44	0\n"
  "gpr	ip	.32	48	0\n"
  "gpr	sp	.32	52	0\n"
  "gpr	lr	.32	56	0\n"
  "gpr	pc	.32	60	0\n"

  "gpr	r0	.32	0	0\n"
  "gpr	r1	.32	4	0\n"
  "gpr	r2	.32	8	0\n"
  "gpr	r3	.32	12	0\n"
  "gpr	r4	.32	16	0\n"
  "gpr	r5	.32	20	0\n"
  "gpr	r6	.32	24	0\n"
  "gpr	r7	.32	28	0\n"
  "gpr	r8	.32	32	0\n"
  "gpr	r9	.32	36	0\n"
  "gpr	r10	.32	40	0\n"
  "gpr	r11	.32	44	0\n"
  "gpr	r12	.32	48	0\n"
  "gpr	r13	.32	52	0\n"
  "gpr	r14	.32	56	0\n"
  "gpr	r15	.32	60	0\n"
 ;
 return r_reg_set_profile_string (anal->reg, p);
}
