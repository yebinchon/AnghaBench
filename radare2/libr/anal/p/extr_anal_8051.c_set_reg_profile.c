
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reg; } ;
typedef TYPE_1__ RAnal ;


 int r_reg_set_profile_string (int ,char const*) ;
 int set_cpu_model (TYPE_1__*,int) ;

__attribute__((used)) static int set_reg_profile(RAnal *anal) {
 const char *p =
  "=PC	pc\n"
  "=SP	sp\n"
  "gpr	r0	.8	0	0\n"
  "gpr	r1	.8	1	0\n"
  "gpr	r2	.8	2	0\n"
  "gpr	r3	.8	3	0\n"
  "gpr	r4	.8	4	0\n"
  "gpr	r5	.8	5	0\n"
  "gpr	r6	.8	6	0\n"
  "gpr	r7	.8	7	0\n"
  "gpr	a	.8	8	0\n"
  "gpr	b	.8	9	0\n"
  "gpr	dptr	.16	10	0\n"
  "gpr	dpl	.8	10	0\n"
  "gpr	dph	.8	11	0\n"
  "gpr	psw	.8	12	0\n"
  "gpr	p	.1	.96	0\n"
  "gpr	ov	.1	.98	0\n"
  "gpr	ac	.1	.102	0\n"
  "gpr	c	.1	.103	0\n"
  "gpr	sp	.8	13	0\n"
  "gpr	pc	.16	15	0\n"
  "gpr	_code	.32	20 0\n"
  "gpr	_idata	.32 24 0\n"
  "gpr	_sfr	.32	28 0\n"
  "gpr	_xdata	.32 32 0\n"
  "gpr	_pdata	.32	36 0\n";

 int retval = r_reg_set_profile_string (anal->reg, p);
 if (retval) {

  set_cpu_model (anal, 1);
 }

 return retval;
}
