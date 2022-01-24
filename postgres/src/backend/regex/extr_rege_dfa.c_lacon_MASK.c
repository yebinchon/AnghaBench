#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vars {int /*<<< orphan*/ * lblastcp; int /*<<< orphan*/ * lblastcss; int /*<<< orphan*/  stop; TYPE_1__* g; int /*<<< orphan*/  re; } ;
struct subre {int /*<<< orphan*/  subno; } ;
struct dfa {int dummy; } ;
struct cnfa {int ncolors; } ;
typedef  int color ;
typedef  int /*<<< orphan*/  chr ;
struct TYPE_2__ {int nlacons; struct subre* lacons; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_ETOOBIG ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct dfa* FUNC6 (struct vars*,int) ; 
 int FUNC7 (struct vars*,struct dfa*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct vars*,struct dfa*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static int						/* predicate:  constraint satisfied? */
FUNC9(struct vars *v,
	  struct cnfa *pcnfa,		/* parent cnfa */
	  chr *cp,
	  color co)					/* "color" of the lookaround constraint */
{
	int			n;
	struct subre *sub;
	struct dfa *d;
	chr		   *end;
	int			satisfied;

	/* Since this is recursive, it could be driven to stack overflow */
	if (FUNC4(v->re))
	{
		FUNC0(REG_ETOOBIG);
		return 0;
	}

	n = co - pcnfa->ncolors;
	FUNC5(n > 0 && n < v->g->nlacons && v->g->lacons != NULL);
	FUNC1(("=== testing lacon %d\n", n));
	sub = &v->g->lacons[n];
	d = FUNC6(v, n);
	if (d == NULL)
		return 0;
	if (FUNC2(sub->subno))
	{
		/* used to use longest() here, but shortest() could be much cheaper */
		end = FUNC8(v, d, cp, cp, v->stop,
					   (chr **) NULL, (int *) NULL);
		satisfied = FUNC3(sub->subno) ? (end != NULL) : (end == NULL);
	}
	else
	{
		/*
		 * To avoid doing O(N^2) work when repeatedly testing a lookbehind
		 * constraint in an N-character string, we use matchuntil() which can
		 * cache the DFA state across calls.  We only need to restart if the
		 * probe point decreases, which is not common.  The NFA we're using is
		 * a search NFA, so it doesn't mind scanning over stuff before the
		 * nominal match.
		 */
		satisfied = FUNC7(v, d, cp, &v->lblastcss[n], &v->lblastcp[n]);
		if (!FUNC3(sub->subno))
			satisfied = !satisfied;
	}
	FUNC1(("=== lacon %d satisfied %d\n", n, satisfied));
	return satisfied;
}