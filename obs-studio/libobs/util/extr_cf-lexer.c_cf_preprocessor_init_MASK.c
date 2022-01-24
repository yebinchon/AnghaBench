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
struct cf_preprocessor {int ignore_state; int /*<<< orphan*/ * ed; int /*<<< orphan*/ * lex; int /*<<< orphan*/  tokens; int /*<<< orphan*/  dependencies; int /*<<< orphan*/  sys_include_dirs; int /*<<< orphan*/  defines; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct cf_preprocessor *pp)
{
	FUNC0(pp->defines);
	FUNC0(pp->sys_include_dirs);
	FUNC0(pp->dependencies);
	FUNC0(pp->tokens);
	pp->lex = NULL;
	pp->ed = NULL;
	pp->ignore_state = false;
}