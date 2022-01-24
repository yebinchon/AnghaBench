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
struct nfa {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 long FUNC0 (struct nfa*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfa*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfa*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfa*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfa*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfa*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfa*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static long						/* re_info bits */
FUNC8(struct nfa *nfa,
		 FILE *f)				/* for debug output; NULL none */
{
#ifdef REG_DEBUG
	int			verbose = (f != NULL) ? 1 : 0;

	if (verbose)
		fprintf(f, "\ninitial cleanup:\n");
#endif
	FUNC1(nfa);				/* may simplify situation */
#ifdef REG_DEBUG
	if (verbose)
		dumpnfa(nfa, f);
	if (verbose)
		fprintf(f, "\nempties:\n");
#endif
	FUNC4(nfa, f);			/* get rid of EMPTY arcs */
#ifdef REG_DEBUG
	if (verbose)
		fprintf(f, "\nconstraints:\n");
#endif
	FUNC3(nfa, f); /* get rid of constraint loops */
	FUNC6(nfa, f);			/* pull back constraints backward */
	FUNC7(nfa, f);			/* push fwd constraints forward */
#ifdef REG_DEBUG
	if (verbose)
		fprintf(f, "\nfinal cleanup:\n");
#endif
	FUNC1(nfa);				/* final tidying */
#ifdef REG_DEBUG
	if (verbose)
		dumpnfa(nfa, f);
#endif
	return FUNC0(nfa);		/* and analysis */
}