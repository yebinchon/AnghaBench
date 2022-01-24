#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__* gregs; } ;
struct TYPE_4__ {TYPE_1__ uc_mcontext; } ;
typedef  TYPE_2__ ucontext_t ;
typedef  int /*<<< orphan*/  siginfo_t ;
typedef  int /*<<< orphan*/  gregset_t ;

/* Variables and functions */
 size_t REG_RIP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  initial_regs ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,...) ; 
 scalar_t__ rip ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC4(int sig, siginfo_t *info, void *ctx_void)
{
	ucontext_t *ctx = (ucontext_t*)ctx_void;

	if (rip != ctx->uc_mcontext.gregs[REG_RIP]) {
		FUNC3("[FAIL]\tRequested RIP=0x%lx but got RIP=0x%lx\n",
		       rip, (unsigned long)ctx->uc_mcontext.gregs[REG_RIP]);
		FUNC1(stdout);
		FUNC0(1);
	}

	FUNC2(&ctx->uc_mcontext.gregs, &initial_regs, sizeof(gregset_t));

	FUNC3("[OK]\tGot SIGSEGV at RIP=0x%lx\n", rip);
}