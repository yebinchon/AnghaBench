#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct state {int s_u; int /*<<< orphan*/  s_nop; int /*<<< orphan*/  s_prefix; } ;
struct directive {char* d_asm; int /*<<< orphan*/  d_inst; } ;

/* Variables and functions */
#define  INST_BC 135 
#define  INST_BRK 134 
#define  INST_BRXL 133 
#define  INST_NOP 132 
#define  INST_RTS 131 
#define  INST_SIF 130 
#define  INST_SLEEP 129 
#define  INST_U 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(struct state *s, struct directive *d) {
	*d->d_asm = '\0';
	switch (FUNC0 (&d->d_inst)) {
	case INST_NOP:
		if (s->s_prefix) {
			return 0;
		}
		s->s_nop++;
		FUNC1(d->d_asm, "nop");
		break;
	case INST_BRK: FUNC1(d->d_asm, "brk"); break;
	case INST_SLEEP: FUNC1(d->d_asm, "sleep"); break;
	case INST_SIF: FUNC1(d->d_asm, "sif"); break;
	case INST_BC: FUNC1(d->d_asm, "bc"); break;
	case INST_BRXL: FUNC1(d->d_asm, "brxl"); break;
	case INST_U: FUNC1(d->d_asm, ""); s->s_u = 1; break;
	case INST_RTS: FUNC1(d->d_asm, "rts"); break;
	}
	return d->d_asm[0]!=0;
}