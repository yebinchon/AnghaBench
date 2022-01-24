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
struct vars {int dummy; } ;
struct nfa {void* post; void* final; struct colormap* cm; void* init; void* pre; struct nfa* parent; void** eos; void** bos; struct vars* v; scalar_t__ nstates; int /*<<< orphan*/ * free; int /*<<< orphan*/ * slast; int /*<<< orphan*/ * states; } ;
struct colormap {int dummy; } ;

/* Variables and functions */
 void* COLORLESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  PLAIN ; 
 int /*<<< orphan*/  REG_ESPACE ; 
 int /*<<< orphan*/  FUNC3 (struct nfa*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfa*,char,int,void*,void*) ; 
 void* FUNC5 (struct nfa*,char) ; 
 void* FUNC6 (struct nfa*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfa*,struct colormap*,int /*<<< orphan*/ ,void*,void*,void*) ; 

__attribute__((used)) static struct nfa *				/* the NFA, or NULL */
FUNC8(struct vars *v,
	   struct colormap *cm,
	   struct nfa *parent)		/* NULL if primary NFA */
{
	struct nfa *nfa;

	nfa = (struct nfa *) FUNC2(sizeof(struct nfa));
	if (nfa == NULL)
	{
		FUNC0(REG_ESPACE);
		return NULL;
	}

	nfa->states = NULL;
	nfa->slast = NULL;
	nfa->free = NULL;
	nfa->nstates = 0;
	nfa->cm = cm;
	nfa->v = v;
	nfa->bos[0] = nfa->bos[1] = COLORLESS;
	nfa->eos[0] = nfa->eos[1] = COLORLESS;
	nfa->parent = parent;		/* Precedes newfstate so parent is valid. */
	nfa->post = FUNC5(nfa, '@');	/* number 0 */
	nfa->pre = FUNC5(nfa, '>'); /* number 1 */

	nfa->init = FUNC6(nfa);	/* may become invalid later */
	nfa->final = FUNC6(nfa);
	if (FUNC1())
	{
		FUNC3(nfa);
		return NULL;
	}
	FUNC7(nfa, nfa->cm, PLAIN, COLORLESS, nfa->pre, nfa->init);
	FUNC4(nfa, '^', 1, nfa->pre, nfa->init);
	FUNC4(nfa, '^', 0, nfa->pre, nfa->init);
	FUNC7(nfa, nfa->cm, PLAIN, COLORLESS, nfa->final, nfa->post);
	FUNC4(nfa, '$', 1, nfa->final, nfa->post);
	FUNC4(nfa, '$', 0, nfa->final, nfa->post);

	if (FUNC1())
	{
		FUNC3(nfa);
		return NULL;
	}
	return nfa;
}