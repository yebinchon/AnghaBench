
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; } ;
typedef TYPE_1__ RAnal ;


 char* strdup (char const*) ;

__attribute__((used)) static char *get_reg_profile(RAnal *anal) {
 const char *p = ((void*)0);
 switch (anal->bits) {
 default:
 case 32: p =
  "=PC    pc\n"
  "=SP    sp\n"
  "=BP    fp\n"
  "=SN    v0\n"
  "=A0    a0\n"
  "=A1    a1\n"
  "=A2    a2\n"
  "=A3    a3\n"
  "=R0    v0\n"
  "=R1    v1\n"
  "gpr	zero	.32	?	0\n"
  "gpr	at	.32	4	0\n"
  "gpr	v0	.32	8	0\n"
  "gpr	v1	.32	12	0\n"
  "gpr	a0	.32	16	0\n"
  "gpr	a1	.32	20	0\n"
  "gpr	a2	.32	24	0\n"
  "gpr	a3	.32	28	0\n"
  "gpr	t0	.32	32	0\n"
  "gpr	t1	.32	36	0\n"
  "gpr	t2 	.32	40	0\n"
  "gpr	t3 	.32	44	0\n"
  "gpr	t4 	.32	48	0\n"
  "gpr	t5 	.32	52	0\n"
  "gpr	t6 	.32	56	0\n"
  "gpr	t7 	.32	60	0\n"
  "gpr	s0	.32	64	0\n"
  "gpr	s1	.32	68	0\n"
  "gpr	s2	.32	72	0\n"
  "gpr	s3	.32	76	0\n"
  "gpr	s4 	.32	80	0\n"
  "gpr	s5 	.32	84	0\n"
  "gpr	s6 	.32	88	0\n"
  "gpr	s7 	.32	92	0\n"
  "gpr	t8 	.32	96	0\n"
  "gpr	t9 	.32	100	0\n"
  "gpr	k0 	.32	104	0\n"
  "gpr	k1 	.32	108	0\n"
  "gpr	gp 	.32	112	0\n"
  "gpr	sp	.32	116	0\n"
  "gpr	fp	.32	120	0\n"
  "gpr	ra	.32	124	0\n"
  "gpr	pc	.32	128	0\n"
  "gpr	hi	.32	132	0\n"
  "gpr	lo	.32	136	0\n"
  "gpr	t	.32	140	0\n";
  break;
 case 64: p =
  "=PC    pc\n"
  "=SP    sp\n"
  "=BP    fp\n"
  "=A0    a0\n"
  "=A1    a1\n"
  "=A2    a2\n"
  "=A3    a3\n"
  "=SN    v0\n"
  "=R0    v0\n"
  "=R1    v1\n"
  "gpr	zero	.64	?	0\n"
  "gpr	at	.64	8	0\n"
  "gpr	v0	.64	16	0\n"
  "gpr	v1	.64	24	0\n"
  "gpr	a0	.64	32	0\n"
  "gpr	a1	.64	40	0\n"
  "gpr	a2	.64	48	0\n"
  "gpr	a3	.64	56	0\n"
  "gpr	t0	.64	64	0\n"
  "gpr	t1	.64	72	0\n"
  "gpr	t2 	.64	80	0\n"
  "gpr	t3 	.64	88	0\n"
  "gpr	t4 	.64	96	0\n"
  "gpr	t5 	.64	104	0\n"
  "gpr	t6 	.64	112	0\n"
  "gpr	t7 	.64	120	0\n"
  "gpr	s0	.64	128	0\n"
  "gpr	s1	.64	136	0\n"
  "gpr	s2	.64	144	0\n"
  "gpr	s3	.64	152	0\n"
  "gpr	s4 	.64	160	0\n"
  "gpr	s5 	.64	168	0\n"
  "gpr	s6 	.64	176	0\n"
  "gpr	s7 	.64	184	0\n"
  "gpr	t8 	.64	192	0\n"
  "gpr	t9 	.64	200	0\n"
  "gpr	k0 	.64	208	0\n"
  "gpr	k1 	.64	216	0\n"
  "gpr	gp 	.64	224	0\n"
  "gpr	sp	.64	232	0\n"
  "gpr	fp	.64	240	0\n"
  "gpr	ra	.64	248	0\n"
  "gpr	pc	.64	256	0\n"
  "gpr	hi	.64	264	0\n"
  "gpr	lo	.64	272	0\n"
  "gpr	t	.64	280	0\n";
  break;
 }
 return p? strdup (p): ((void*)0);
}
