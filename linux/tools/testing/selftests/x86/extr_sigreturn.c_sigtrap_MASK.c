#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__* gregs; } ;
struct TYPE_6__ {int uc_flags; TYPE_1__ uc_mcontext; } ;
typedef  TYPE_2__ ucontext_t ;
typedef  int /*<<< orphan*/  siginfo_t ;
typedef  int /*<<< orphan*/  gregset_t ;
typedef  scalar_t__ greg_t ;

/* Variables and functions */
 size_t REG_CX ; 
 size_t REG_ERR ; 
 size_t REG_TRAPNO ; 
 int SIGTRAP ; 
 int UC_STRICT_RESTORE_SS ; 
 scalar_t__* initial_regs ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__**,scalar_t__**,int) ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__* resulting_regs ; 
 scalar_t__ sig_corrupt_final_ss ; 
 scalar_t__ sig_err ; 
 scalar_t__ sig_ss ; 
 scalar_t__ sig_trapno ; 
 int sig_trapped ; 
 scalar_t__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(int sig, siginfo_t *info, void *ctx_void)
{
	ucontext_t *ctx = (ucontext_t*)ctx_void;

	FUNC3(sig, ctx);

	sig_err = ctx->uc_mcontext.gregs[REG_ERR];
	sig_trapno = ctx->uc_mcontext.gregs[REG_TRAPNO];

	unsigned short ss;
	asm ("mov %%ss,%0" : "=r" (ss));

	greg_t asm_ss = ctx->uc_mcontext.gregs[REG_CX];
	if (asm_ss != sig_ss && sig == SIGTRAP) {
		/* Sanity check failure. */
		FUNC1("[FAIL]\tSIGTRAP: ss = %hx, frame ss = %hx, ax = %llx\n",
		       ss, *FUNC2(ctx), (unsigned long long)asm_ss);
		nerrs++;
	}

	FUNC0(&resulting_regs, &ctx->uc_mcontext.gregs, sizeof(gregset_t));
	FUNC0(&ctx->uc_mcontext.gregs, &initial_regs, sizeof(gregset_t));

#ifdef __x86_64__
	if (sig_corrupt_final_ss) {
		if (ctx->uc_flags & UC_STRICT_RESTORE_SS) {
			FUNC1("[FAIL]\tUC_STRICT_RESTORE_SS was set inappropriately\n");
			nerrs++;
		} else {
			/*
			 * DOSEMU transitions from 32-bit to 64-bit mode by
			 * adjusting sigcontext, and it requires that this work
			 * even if the saved SS is bogus.
			 */
			FUNC1("\tCorrupting SS on return to 64-bit mode\n");
			*FUNC2(ctx) = 0;
		}
	}
#endif

	sig_trapped = sig;
}