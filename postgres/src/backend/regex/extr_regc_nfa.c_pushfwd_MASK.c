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
struct state {scalar_t__ nins; scalar_t__ nouts; int /*<<< orphan*/  flag; struct state* tmp; struct arc* ins; struct state* next; } ;
struct nfa {int /*<<< orphan*/ * eos; TYPE_1__* post; struct state* states; } ;
struct arc {char type; int co; int /*<<< orphan*/  to; int /*<<< orphan*/  from; struct arc* inchain; } ;
struct TYPE_2__ {struct arc* ins; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char AHEAD ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  PLAIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfa*,struct state*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfa*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfa*,struct arc*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfa*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nfa*,struct arc*,struct state**) ; 

__attribute__((used)) static void
FUNC7(struct nfa *nfa,
		FILE *f)				/* for debug output; NULL none */
{
	struct state *s;
	struct state *nexts;
	struct arc *a;
	struct arc *nexta;
	struct state *intermediates;
	int			progress;

	/* find and push until there are no more */
	do
	{
		progress = 0;
		for (s = nfa->states; s != NULL && !FUNC0(); s = nexts)
		{
			nexts = s->next;
			intermediates = NULL;
			for (a = s->ins; a != NULL && !FUNC0(); a = nexta)
			{
				nexta = a->inchain;
				if (a->type == '$' || a->type == AHEAD)
					if (FUNC6(nfa, a, &intermediates))
						progress = 1;
			}
			/* clear tmp fields of intermediate states created here */
			while (intermediates != NULL)
			{
				struct state *ns = intermediates->tmp;

				intermediates->tmp = NULL;
				intermediates = ns;
			}
			/* if s is now useless, get rid of it */
			if ((s->nins == 0 || s->nouts == 0) && !s->flag)
				FUNC2(nfa, s);
		}
		if (progress && f != NULL)
			FUNC3(nfa, f);
	} while (progress && !FUNC0());
	if (FUNC0())
		return;

	/*
	 * Any $ constraints we were able to push to the post state can now be
	 * replaced by PLAIN arcs referencing the EOS or EOL colors.  There should
	 * be no other $ or AHEAD arcs left in the NFA, though we do not check
	 * that here (compact() will fail if so).
	 */
	for (a = nfa->post->ins; a != NULL; a = nexta)
	{
		nexta = a->inchain;
		if (a->type == '$')
		{
			FUNC1(a->co == 0 || a->co == 1);
			FUNC5(nfa, PLAIN, nfa->eos[a->co], a->from, a->to);
			FUNC4(nfa, a);
		}
	}
}