#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tok; } ;
typedef  TYPE_1__ TokenSym ;
typedef  int /*<<< orphan*/  TCCState ;
typedef  int /*<<< orphan*/  Sym ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (char const*,int /*<<< orphan*/ ) ; 

void FUNC4(TCCState *s1, const char *sym)
{
	TokenSym *ts;
	Sym *s;
	ts = FUNC3 (sym, FUNC2 (sym));
	s = FUNC0 (ts->tok);
	/* undefine symbol by putting an invalid name */
	if (s) {
		FUNC1 (s);
	}
}