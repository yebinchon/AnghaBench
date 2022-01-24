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
struct state {int /*<<< orphan*/  no; struct state* next; int /*<<< orphan*/  flag; TYPE_1__* tmp; } ;
struct nfa {int nstates; struct state* states; TYPE_1__* post; int /*<<< orphan*/  pre; } ;
struct TYPE_3__ {scalar_t__ nins; struct TYPE_3__* tmp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfa*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfa*,struct state*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfa*,TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfa*,int /*<<< orphan*/ ,struct state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct nfa *nfa)
{
	struct state *s;
	struct state *nexts;
	int			n;

	if (FUNC0())
		return;

	/* clear out unreachable or dead-end states */
	/* use pre to mark reachable, then post to mark can-reach-post */
	FUNC5(nfa, nfa->pre, (struct state *) NULL, nfa->pre);
	FUNC4(nfa, nfa->post, nfa->pre, nfa->post);
	for (s = nfa->states; s != NULL && !FUNC0(); s = nexts)
	{
		nexts = s->next;
		if (s->tmp != nfa->post && !s->flag)
			FUNC3(nfa, s);
	}
	FUNC1(FUNC0() || nfa->post->nins == 0 || nfa->post->tmp == nfa->post);
	FUNC2(nfa, nfa->pre);
	FUNC1(FUNC0() || nfa->post->nins == 0 || nfa->post->tmp == NULL);
	/* the nins==0 (final unreachable) case will be caught later */

	/* renumber surviving states */
	n = 0;
	for (s = nfa->states; s != NULL; s = s->next)
		s->no = n++;
	nfa->nstates = n;
}