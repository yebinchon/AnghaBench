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
struct vars {int /*<<< orphan*/  nfa; int /*<<< orphan*/  cm; } ;
struct state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHEAD ; 
 int /*<<< orphan*/  BEHIND ; 
 char LACON ; 
#define  LATYPE_AHEAD_NEG 131 
#define  LATYPE_AHEAD_POS 130 
#define  LATYPE_BEHIND_NEG 129 
#define  LATYPE_BEHIND_POS 128 
 int /*<<< orphan*/  NOTREACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct state*,struct state*,struct state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct state*,struct state*,struct state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char,int,struct state*,struct state*) ; 
 int FUNC4 (struct vars*,struct state*,struct state*,int) ; 
 struct state* FUNC5 (struct state*,struct state*) ; 

__attribute__((used)) static void
FUNC6(struct vars *v,
			 struct state *begin,	/* start of parsed LACON sub-re */
			 struct state *end, /* end of parsed LACON sub-re */
			 int latype,
			 struct state *lp,	/* left state to hang it on */
			 struct state *rp)	/* right state to hang it on */
{
	struct state *s1;
	int			n;

	/*
	 * Check for lookaround RE consisting of a single plain color arc (or set
	 * of arcs); this would typically be a simple chr or a bracket expression.
	 */
	s1 = FUNC5(begin, end);
	switch (latype)
	{
		case LATYPE_AHEAD_POS:
			/* If lookahead RE is just colorset C, convert to AHEAD(C) */
			if (s1 != NULL)
			{
				FUNC1(v->nfa, s1, lp, rp, AHEAD);
				return;
			}
			break;
		case LATYPE_AHEAD_NEG:
			/* If lookahead RE is just colorset C, convert to AHEAD(^C)|$ */
			if (s1 != NULL)
			{
				FUNC2(v->nfa, v->cm, AHEAD, s1, lp, rp);
				FUNC3(v->nfa, '$', 1, lp, rp);
				FUNC3(v->nfa, '$', 0, lp, rp);
				return;
			}
			break;
		case LATYPE_BEHIND_POS:
			/* If lookbehind RE is just colorset C, convert to BEHIND(C) */
			if (s1 != NULL)
			{
				FUNC1(v->nfa, s1, lp, rp, BEHIND);
				return;
			}
			break;
		case LATYPE_BEHIND_NEG:
			/* If lookbehind RE is just colorset C, convert to BEHIND(^C)|^ */
			if (s1 != NULL)
			{
				FUNC2(v->nfa, v->cm, BEHIND, s1, lp, rp);
				FUNC3(v->nfa, '^', 1, lp, rp);
				FUNC3(v->nfa, '^', 0, lp, rp);
				return;
			}
			break;
		default:
			FUNC0(NOTREACHED);
	}

	/* General case: we need a LACON subre and arc */
	n = FUNC4(v, begin, end, latype);
	FUNC3(v->nfa, LACON, n, lp, rp);
}