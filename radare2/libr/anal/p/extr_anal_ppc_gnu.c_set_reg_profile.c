
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg; } ;
typedef TYPE_1__ RAnal ;


 int r_reg_set_profile_string (int ,char const*) ;

__attribute__((used)) static int set_reg_profile(RAnal *anal) {
    const char *p =
 "=PC	srr0\n"
 "=SR	srr1\n"
 "=A0	r0\n"
 "=A1	r1\n"
 "=A2	r2\n"
 "=A3	r3\n"






 "gpr	srr0	.32	0	0\n"
 "gpr	srr1	.32	4	0\n"
 "gpr	r0	.32	8	0\n"
 "gpr	r1	.32	12	0\n"
 "gpr	r2	.32	16	0\n"
 "gpr	r3	.32	20	0\n"
 "gpr	r4	.32	24	0\n"
 "gpr	r5	.32	28	0\n"
 "gpr	r6	.32	32	0\n"
 "gpr	r7	.32	36	0\n"
 "gpr	r8	.32	40	0\n"
 "gpr	r9	.32	44	0\n"
 "gpr	r10	.32	48	0\n"
 "gpr	r11	.32	52	0\n"
 "gpr	r12	.32	56	0\n"
 "gpr	r13	.32	60	0\n"
 "gpr	r14	.32	64	0\n"
 "gpr	r15	.32	68	0\n"
 "gpr	r16	.32	72	0\n"
 "gpr	r17	.32	76	0\n"
 "gpr	r18	.32	80	0\n"
 "gpr	r19	.32	84	0\n"
 "gpr	r20	.32	88	0\n"
 "gpr	r21	.32	92	0\n"
 "gpr	r22	.32	96	0\n"

 "gpr	r23	.32	100	0\n"
 "gpr	r24	.32	104	0\n"
 "gpr	r25	.32	108	0\n"
 "gpr	r26	.32	112	0\n"
 "gpr	r27	.32	116	0\n"
 "gpr	r28	.32	120	0\n"
 "gpr	r29	.32	124	0\n"
 "gpr	r30	.32	128	0\n"
 "gpr	r31	.32	132	0\n"
 "gpr	cr	.32	136	0\n"
 "gpr	xer	.32	140	0\n"
 "gpr	lr	.32	144	0\n"
 "gpr	ctr	.32	148	0\n"
 "gpr	mq	.32	152	0\n"
 "gpr	vrsave	.32	156	0\n";
 return r_reg_set_profile_string (anal->reg, p);
}
