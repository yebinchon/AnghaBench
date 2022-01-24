#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned long* gregs; } ;
struct TYPE_7__ {TYPE_1__ uc_mcontext; } ;
typedef  TYPE_2__ ucontext_t ;
typedef  int /*<<< orphan*/  siginfo_t ;
typedef  int /*<<< orphan*/  gregset_t ;

/* Variables and functions */
 size_t REG_CX ; 
 size_t REG_IP ; 
 size_t REG_SP ; 
 scalar_t__ code16_sel ; 
 scalar_t__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * initial_regs ; 
 int /*<<< orphan*/  int3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,unsigned long**,int) ; 
 int /*<<< orphan*/ * requested_regs ; 
 scalar_t__ sig_cs ; 
 int /*<<< orphan*/  sig_ss ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(int sig, siginfo_t *info, void *ctx_void)
{
	ucontext_t *ctx = (ucontext_t*)ctx_void;

	FUNC3(sig, ctx);

	FUNC1(&initial_regs, &ctx->uc_mcontext.gregs, sizeof(gregset_t));

	*FUNC0(ctx) = sig_cs;
	*FUNC2(ctx) = sig_ss;

	ctx->uc_mcontext.gregs[REG_IP] =
		sig_cs == code16_sel ? 0 : (unsigned long)&int3;
	ctx->uc_mcontext.gregs[REG_SP] = (unsigned long)0x8badf00d5aadc0deULL;
	ctx->uc_mcontext.gregs[REG_CX] = 0;

	FUNC1(&requested_regs, &ctx->uc_mcontext.gregs, sizeof(gregset_t));
	requested_regs[REG_CX] = *FUNC2(ctx);	/* The asm code does this. */

	return;
}