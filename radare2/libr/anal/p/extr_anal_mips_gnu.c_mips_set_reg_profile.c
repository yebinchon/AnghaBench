
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg; } ;
typedef TYPE_1__ RAnal ;


 int r_reg_set_profile_string (int ,char const*) ;

__attribute__((used)) static int mips_set_reg_profile(RAnal* anal){
     const char *p =
 "=PC	pc\n"
 "=SP	sp\n"
 "=BP	fp\n"
 "=A0	a0\n"
 "=A1	a1\n"
 "=A2	a2\n"
 "=A3	a3\n"
 "gpr	zero	.64	0	0\n"

 "gpr	at	.64	8	0\n"
 "gpr	v0	.64	16	0\n"
 "gpr	v1	.64	24	0\n"

 "gpr	a0	.64	32	0\n"
 "gpr	a1	.64	40	0\n"
 "gpr	a2	.64	48	0\n"
 "gpr	a3	.64	56	0\n"

 "gpr	t0	.64	64	0\n"
 "gpr	t1	.64	72	0\n"
 "gpr	t2	.64	80	0\n"
 "gpr	t3	.64	88	0\n"
 "gpr	t4	.64	96	0\n"
 "gpr	t5	.64	104	0\n"
 "gpr	t6	.64	112	0\n"
 "gpr	t7	.64	120	0\n"

 "gpr	s0	.64	128	0\n"
 "gpr	s1	.64	136	0\n"
 "gpr	s2	.64	144	0\n"
 "gpr	s3	.64	152	0\n"
 "gpr	s4	.64	160	0\n"
 "gpr	s5	.64	168	0\n"
 "gpr	s6	.64	176	0\n"
 "gpr	s7	.64	184	0\n"
 "gpr	t8	.64	192	0\n"
 "gpr	t9	.64	200	0\n"

 "gpr	k0	.64	208	0\n"
 "gpr	k1	.64	216	0\n"
 "gpr	gp	.64	224	0\n"
 "gpr	sp	.64	232	0\n"
 "gpr	fp	.64	240	0\n"
 "gpr	ra	.64	248	0\n"

 "gpr	pc	.64	272	0\n"
 ;

 return r_reg_set_profile_string (anal->reg, p);
}
