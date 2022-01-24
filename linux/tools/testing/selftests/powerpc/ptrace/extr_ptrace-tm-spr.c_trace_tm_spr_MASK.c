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
struct tm_spr_regs {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_3__ {int /*<<< orphan*/  tm_tfiar; int /*<<< orphan*/  tm_texasr; int /*<<< orphan*/  tm_tfhar; } ;
struct TYPE_4__ {int flag; TYPE_1__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TEST_PASS ; 
 TYPE_2__* pptr ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct tm_spr_regs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(pid_t child)
{
	FUNC0(FUNC3(child));
	FUNC0(FUNC2(child, (struct tm_spr_regs *)&pptr->regs));

	FUNC1("TFHAR: %lx TEXASR: %lx TFIAR: %lx\n", pptr->regs.tm_tfhar,
				pptr->regs.tm_texasr, pptr->regs.tm_tfiar);

	pptr->flag = 1;
	FUNC0(FUNC4(child));

	return TEST_PASS;
}