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
struct vars {int /*<<< orphan*/  cm; int /*<<< orphan*/  nfa; } ;
struct state {int dummy; } ;

/* Variables and functions */
 char EOS ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct vars*,struct state*,struct state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct vars *v,
		struct state *lp,
		struct state *rp)
{
	FUNC3(FUNC2('['));
	FUNC1();
	while (!FUNC2(']') && !FUNC2(EOS))
		FUNC4(v, lp, rp);
	FUNC3(FUNC2(']') || FUNC0());
	FUNC5(v->nfa, v->cm);
}