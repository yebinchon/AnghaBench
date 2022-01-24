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
struct state {int nouts; struct arc* outs; } ;
struct nfa {int dummy; } ;
struct arc {struct arc* outchainRev; struct arc* outchain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arc**) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_ESPACE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct arc**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sortouts_cmp ; 

__attribute__((used)) static void
FUNC5(struct nfa *nfa,
		 struct state *s)
{
	struct arc **sortarray;
	struct arc *a;
	int			n = s->nouts;
	int			i;

	if (n <= 1)
		return;					/* nothing to do */
	/* make an array of arc pointers ... */
	sortarray = (struct arc **) FUNC1(n * sizeof(struct arc *));
	if (sortarray == NULL)
	{
		FUNC2(REG_ESPACE);
		return;
	}
	i = 0;
	for (a = s->outs; a != NULL; a = a->outchain)
		sortarray[i++] = a;
	FUNC3(i == n);
	/* ... sort the array */
	FUNC4(sortarray, n, sizeof(struct arc *), sortouts_cmp);
	/* ... and rebuild arc list in order */
	/* it seems worth special-casing first and last items to simplify loop */
	a = sortarray[0];
	s->outs = a;
	a->outchain = sortarray[1];
	a->outchainRev = NULL;
	for (i = 1; i < n - 1; i++)
	{
		a = sortarray[i];
		a->outchain = sortarray[i + 1];
		a->outchainRev = sortarray[i - 1];
	}
	a = sortarray[i];
	a->outchain = NULL;
	a->outchainRev = sortarray[i - 1];
	FUNC0(sortarray);
}