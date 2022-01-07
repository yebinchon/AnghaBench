
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* anal; int arch; } ;
struct TYPE_4__ {int bits; } ;
typedef TYPE_2__ RDebug ;




 int r_sys_arch_id (int ) ;
 char const* strdup (char*) ;

__attribute__((used)) static const char *r_debug_qnx_reg_profile (RDebug *dbg) {
 int arch = r_sys_arch_id (dbg->arch);
 int bits = dbg->anal->bits;
 switch (arch) {
 case 128:
  return strdup (
   "=PC	eip\n"
   "=SP	esp\n"
   "=BP	ebp\n"
   "=A0	eax\n"
   "=A1	ebx\n"
   "=A2	ecx\n"
   "=A3	edi\n"
   "gpr	eax	.32	0	0\n"
   "gpr	ecx	.32	4	0\n"
   "gpr	edx	.32	8	0\n"
   "gpr	ebx	.32	12	0\n"
   "gpr	esp	.32	16	0\n"
   "gpr	ebp	.32	20	0\n"
   "gpr	esi	.32	24	0\n"
   "gpr	edi	.32	28	0\n"
   "gpr	eip	.32	32	0\n"
   "gpr	eflags	.32	36	0\n"
   "seg	cs	.32	40	0\n"
   "seg	ss	.32	44	0\n"






   );
 case 129:
  if (bits == 32) {
   return strdup (
    "=PC	r15\n"
    "=SP	r14\n"
    "=A0	r0\n"
    "=A1	r1\n"
    "=A2	r2\n"
    "=A3	r3\n"
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
    "gpr	sp	.32	52	0\n"
    "gpr	lr	.32	56	0\n"
    "gpr	pc	.32	60	0\n"
    "gpr	r13	.32	52	0\n"
    "gpr	r14	.32	56	0\n"
    "gpr	r15	.32	60	0\n"
    "gpr	cpsr	.96	64	0\n"
    "mmx	d0	.64	68	0\n"
    "mmx	d1	.64	76	0\n"
    "mmx	d2	.64	84	0\n"
    "mmx	d3	.64	92	0\n"
    "mmx	d4	.64	100	0\n"
    "mmx	d5	.64	108	0\n"
    "mmx	d6	.64	116	0\n"
    "mmx	d7	.64	124	0\n"
    "mmx	d8	.64	132	0\n"
    "mmx	d9	.64	140	0\n"
    "mmx	d10	.64	148	0\n"
    "mmx	d11	.64	156	0\n"
    "mmx	d12	.64	164	0\n"
    "mmx	d13	.64	172	0\n"
    "mmx	d14	.64	180	0\n"
    "mmx	d15	.64	188	0\n"
    "mmx	d16	.64	196	0\n"
    "mmx	d17	.64	204	0\n"
    "mmx	d18	.64	212	0\n"
    "mmx	d19	.64	220	0\n"
    "mmx	d20	.64	228	0\n"
    "mmx	d21	.64	236	0\n"
    "mmx	d22	.64	244	0\n"
    "mmx	d23	.64	252	0\n"
    "mmx	d24	.64	260	0\n"
    "mmx	d25	.64	268	0\n"
    "mmx	d26	.64	276	0\n"
    "mmx	d27	.64	284	0\n"
    "mmx	d28	.64	292	0\n"
    "mmx	d29	.64	300	0\n"
    "mmx	d30	.64	308	0\n"
    "mmx	d31	.64	316	0\n"
    "mmx	fpscr	.32	324	0\n"
   );
  }
 }
 return ((void*)0);
}
