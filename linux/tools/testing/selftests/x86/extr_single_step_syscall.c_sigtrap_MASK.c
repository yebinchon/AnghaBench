#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__* gregs; } ;
struct TYPE_6__ {TYPE_1__ uc_mcontext; } ;
typedef  TYPE_2__ ucontext_t ;
struct TYPE_7__ {scalar_t__ si_addr; } ;
typedef  TYPE_3__ siginfo_t ;

/* Variables and functions */
 size_t REG_IP ; 
 int X86_EFLAGS_TF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int sig_traps ; 

__attribute__((used)) static void FUNC4(int sig, siginfo_t *info, void *ctx_void)
{
	ucontext_t *ctx = (ucontext_t*)ctx_void;

	if (FUNC1() & X86_EFLAGS_TF) {
		FUNC3(FUNC1() & ~X86_EFLAGS_TF);
		FUNC2("[WARN]\tSIGTRAP handler had TF set\n");
		FUNC0(1);
	}

	sig_traps++;

	if (sig_traps == 10000 || sig_traps == 10001) {
		FUNC2("[WARN]\tHit %d SIGTRAPs with si_addr 0x%lx, ip 0x%lx\n",
		       (int)sig_traps,
		       (unsigned long)info->si_addr,
		       (unsigned long)ctx->uc_mcontext.gregs[REG_IP]);
	}
}