
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* anal; } ;
struct TYPE_4__ {int bits; } ;
typedef TYPE_2__ RDebug ;


 char const* strdup (char*) ;

__attribute__((used)) static const char *r_debug_bochs_reg_profile(RDebug *dbg) {
 int bits = dbg->anal->bits;

 if (bits == 16 || bits == 32 || bits == 64) {
  return strdup (
    "=PC	csip\n"
    "=SP	rsp\n"
    "=BP	rbp\n"
    "=A0	rax\n"
    "=A1	rbx\n"
    "=A2	rcx\n"
    "=A3	rdi\n"

    "seg	es	2	0x038	0	\n"
    "seg	cs	2	0x03A	0	\n"
    "seg	ss	2	0x03C	0	\n"
    "seg	ds	2	0x03E	0	\n"
    "seg	fs	2	0x040	0	\n"
    "seg	gs	2	0x042	0	\n"

    "gpr	rax	8	0x078	0	\n"
    "gpr	eax	4	0x078	0	\n"
    "gpr	ax	2	0x078	0	\n"
    "gpr	al	1	0x078	0	\n"
    "gpr	rcx	8	0x080	0	\n"
    "gpr	ecx	4	0x080	0	\n"
    "gpr	cx	2	0x080	0	\n"
    "gpr	cl	1	0x078	0	\n"
    "gpr	rdx	8	0x088	0	\n"
    "gpr	edx	4	0x088	0	\n"
    "gpr	dx	2	0x088	0	\n"
    "gpr	dl	1	0x088	0	\n"
    "gpr	rbx	8	0x090	0	\n"
    "gpr	ebx	4	0x090	0	\n"
    "gpr	bx	2	0x090	0	\n"
    "gpr	bl	1	0x090	0	\n"
    "gpr	rsp	8	0x098	0	\n"
    "gpr	esp	4	0x098	0	\n"
    "gpr	sp	2	0x098	0	\n"
    "gpr	spl	1	0x098	0	\n"
    "gpr	rbp	8	0x0A0	0	\n"
    "gpr	ebp	4	0x0A0	0	\n"
    "gpr	bp	2	0x0A0	0	\n"
    "gpr	bpl	1	0x0A0	0	\n"
    "gpr	rsi	8	0x0A8	0	\n"
    "gpr	esi	4	0x0A8	0	\n"
    "gpr	si	2	0x0A8	0	\n"
    "gpr	sil	1	0x0A8	0	\n"
    "gpr	rdi	8	0x0B0	0	\n"
    "gpr	edi	4	0x0B0	0	\n"
    "gpr	di	2	0x0B0	0	\n"
    "gpr	dil	1	0x0B0	0	\n"
    "gpr	r8	8	0x0B8	0	\n"
    "gpr	r8d	4	0x0B8	0	\n"
    "gpr	r8w	2	0x0B8	0	\n"
    "gpr	r8b	1	0x0B8	0	\n"
    "gpr	r9	8	0x0C0	0	\n"
    "gpr	r9d	4	0x0C0	0	\n"
    "gpr	r9w	2	0x0C0	0	\n"
    "gpr	r9b	1	0x0C0	0	\n"
    "gpr	r10	8	0x0C8	0	\n"
    "gpr	r10d	4	0x0C8	0	\n"
    "gpr	r10w	2	0x0C8	0	\n"
    "gpr	r10b	1	0x0C8	0	\n"
    "gpr	r11	8	0x0D0	0	\n"
    "gpr	r11d	4	0x0D0	0	\n"
    "gpr	r11w	2	0x0D0	0	\n"
    "gpr	r11b	1	0x0D0	0	\n"
    "gpr	r12	8	0x0D8	0	\n"
    "gpr	r12d	4	0x0D8	0	\n"
    "gpr	r12w	2	0x0D8	0	\n"
    "gpr	r12b	1	0x0D8	0	\n"
    "gpr	r13	8	0x0E0	0	\n"
    "gpr	r13d	4	0x0E0	0	\n"
    "gpr	r13w	2	0x0E0	0	\n"
    "gpr	r13b	1	0x0E0	0	\n"
    "gpr	r14	8	0x0E8	0	\n"
    "gpr	r14d	4	0x0E8	0	\n"
    "gpr	r14w	2	0x0E8	0	\n"
    "gpr	r14b	1	0x0E8	0	\n"
    "gpr	r15	8	0x0F0	0	\n"
    "gpr	r15d	4	0x0F0	0	\n"
    "gpr	r15w	2	0x0F0	0	\n"
    "gpr	r15b	1	0x0F0	0	\n"
    "gpr	rip	8	0x0F8	0	\n"
    "gpr	eip	4	0x0F8	0	\n"
    "gpr	csip	8	0x000	0	\n"
    );
 }
 return ((void*)0);
}
