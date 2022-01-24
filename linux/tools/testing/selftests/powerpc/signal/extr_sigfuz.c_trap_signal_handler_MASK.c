#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int* gp_regs; } ;
struct TYPE_12__ {TYPE_4__* uc_link; TYPE_1__ uc_mcontext; } ;
typedef  TYPE_3__ ucontext_t ;
typedef  int /*<<< orphan*/  siginfo_t ;
struct TYPE_11__ {int* gp_regs; } ;
struct TYPE_13__ {TYPE_2__ uc_mcontext; } ;

/* Variables and functions */
 int ARG_MESS_WITH_MSR_AT ; 
 int ARG_MESS_WITH_TM_BEFORE ; 
 int /*<<< orphan*/  MADV_DONTNEED ; 
 int MSR_TS_S ; 
 int MSR_TS_T ; 
 size_t PT_CCR ; 
 size_t PT_CTR ; 
 size_t PT_DAR ; 
 size_t PT_DSCR ; 
 size_t PT_DSISR ; 
 size_t PT_LNK ; 
 size_t PT_MSR ; 
 size_t PT_NIP ; 
 size_t PT_ORIG_R3 ; 
 size_t PT_REGS_COUNT ; 
 size_t PT_RESULT ; 
 size_t PT_SOFTE ; 
 size_t PT_TRAP ; 
 size_t PT_XER ; 
 int args ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 void* FUNC8 () ; 
 TYPE_4__* tmp_uc ; 

__attribute__((used)) static void FUNC9(int signo, siginfo_t *si, void *uc)
{
	ucontext_t *ucp = uc;

	ucp->uc_link = tmp_uc;

	/*
	 * Set uc_link in three possible ways:
	 *  - Setting a single 'int' in the whole chunk
	 *  - Cloning ucp into uc_link
	 *  - Allocating a new memory chunk
	 */
	if (FUNC6(3)) {
		FUNC4(ucp->uc_link, FUNC7(), sizeof(ucontext_t));
	} else if (FUNC6(2)) {
		FUNC3(ucp->uc_link, uc, sizeof(ucontext_t));
	} else if (FUNC6(2)) {
		if (tmp_uc) {
			FUNC0(tmp_uc);
			tmp_uc = NULL;
		}
		tmp_uc = FUNC2(sizeof(ucontext_t));
		ucp->uc_link = tmp_uc;
		/* Trying to cause a major page fault at Kernel level */
		FUNC1(ucp->uc_link, sizeof(ucontext_t), MADV_DONTNEED);
	}

	if (args & ARG_MESS_WITH_MSR_AT) {
		/* Changing the checkpointed registers */
		if (FUNC6(4)) {
			ucp->uc_link->uc_mcontext.gp_regs[PT_MSR] |= MSR_TS_S;
		} else {
			if (FUNC6(2)) {
				ucp->uc_link->uc_mcontext.gp_regs[PT_MSR] |=
						 MSR_TS_T;
			} else if (FUNC6(2)) {
				ucp->uc_link->uc_mcontext.gp_regs[PT_MSR] |=
						MSR_TS_T | MSR_TS_S;
			}
		}

		/* Checking the current register context */
		if (FUNC6(2)) {
			ucp->uc_mcontext.gp_regs[PT_MSR] |= MSR_TS_S;
		} else if (FUNC6(2)) {
			if (FUNC6(2))
				ucp->uc_mcontext.gp_regs[PT_MSR] |=
					MSR_TS_T;
			else if (FUNC6(2))
				ucp->uc_mcontext.gp_regs[PT_MSR] |=
					MSR_TS_T | MSR_TS_S;
		}
	}

	if (FUNC6(20)) {
		/* Nested transaction start */
		if (FUNC6(5))
			FUNC5();

		/* Return without changing any other context info */
		return;
	}

	if (FUNC6(10))
		ucp->uc_mcontext.gp_regs[PT_MSR] = FUNC8();
	if (FUNC6(10))
		ucp->uc_mcontext.gp_regs[PT_NIP] = FUNC8();
	if (FUNC6(10))
		ucp->uc_link->uc_mcontext.gp_regs[PT_MSR] = FUNC8();
	if (FUNC6(10))
		ucp->uc_link->uc_mcontext.gp_regs[PT_NIP] = FUNC8();

	ucp->uc_mcontext.gp_regs[PT_TRAP] = FUNC8();
	ucp->uc_mcontext.gp_regs[PT_DSISR] = FUNC8();
	ucp->uc_mcontext.gp_regs[PT_DAR] = FUNC8();
	ucp->uc_mcontext.gp_regs[PT_ORIG_R3] = FUNC8();
	ucp->uc_mcontext.gp_regs[PT_XER] = FUNC8();
	ucp->uc_mcontext.gp_regs[PT_RESULT] = FUNC8();
	ucp->uc_mcontext.gp_regs[PT_SOFTE] = FUNC8();
	ucp->uc_mcontext.gp_regs[PT_DSCR] = FUNC8();
	ucp->uc_mcontext.gp_regs[PT_CTR] = FUNC8();
	ucp->uc_mcontext.gp_regs[PT_LNK] = FUNC8();
	ucp->uc_mcontext.gp_regs[PT_CCR] = FUNC8();
	ucp->uc_mcontext.gp_regs[PT_REGS_COUNT] = FUNC8();

	ucp->uc_link->uc_mcontext.gp_regs[PT_TRAP] = FUNC8();
	ucp->uc_link->uc_mcontext.gp_regs[PT_DSISR] = FUNC8();
	ucp->uc_link->uc_mcontext.gp_regs[PT_DAR] = FUNC8();
	ucp->uc_link->uc_mcontext.gp_regs[PT_ORIG_R3] = FUNC8();
	ucp->uc_link->uc_mcontext.gp_regs[PT_XER] = FUNC8();
	ucp->uc_link->uc_mcontext.gp_regs[PT_RESULT] = FUNC8();
	ucp->uc_link->uc_mcontext.gp_regs[PT_SOFTE] = FUNC8();
	ucp->uc_link->uc_mcontext.gp_regs[PT_DSCR] = FUNC8();
	ucp->uc_link->uc_mcontext.gp_regs[PT_CTR] = FUNC8();
	ucp->uc_link->uc_mcontext.gp_regs[PT_LNK] = FUNC8();
	ucp->uc_link->uc_mcontext.gp_regs[PT_CCR] = FUNC8();
	ucp->uc_link->uc_mcontext.gp_regs[PT_REGS_COUNT] = FUNC8();

	if (args & ARG_MESS_WITH_TM_BEFORE) {
		if (FUNC6(2))
			FUNC5();
	}
}