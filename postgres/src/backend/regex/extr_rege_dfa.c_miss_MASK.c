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
struct vars {int /*<<< orphan*/  re; } ;
struct TYPE_2__ {size_t co; struct sset* ss; } ;
struct sset {unsigned int hash; TYPE_1__ ins; TYPE_1__* inchain; struct sset** outs; int /*<<< orphan*/  flags; scalar_t__* states; } ;
struct dfa {int wordsper; int nstates; int nssused; struct sset* ssets; scalar_t__* work; struct cnfa* cnfa; } ;
struct cnfa {size_t post; int* stflags; int flags; size_t ncolors; struct carc** states; } ;
struct carc {size_t co; size_t to; } ;
typedef  size_t color ;
typedef  int /*<<< orphan*/  chr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int CNFA_NOPROGRESS ; 
 size_t COLORLESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 unsigned int FUNC4 (scalar_t__*,int) ; 
 int HASLACONS ; 
 scalar_t__ FUNC5 (unsigned int,scalar_t__*,struct sset*,int) ; 
 scalar_t__ FUNC6 (scalar_t__*,int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  NOPROGRESS ; 
 int /*<<< orphan*/  POSTSTATE ; 
 int /*<<< orphan*/  REG_CANCEL ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct sset* FUNC9 (struct vars*,struct dfa*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vars*,struct cnfa*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static struct sset *
FUNC11(struct vars *v,
	 struct dfa *d,
	 struct sset *css,
	 color co,
	 chr *cp,					/* next chr */
	 chr *start)				/* where the attempt got started */
{
	struct cnfa *cnfa = d->cnfa;
	int			i;
	unsigned	h;
	struct carc *ca;
	struct sset *p;
	int			ispost;
	int			noprogress;
	int			gotstate;
	int			dolacons;
	int			sawlacons;

	/* for convenience, we can be called even if it might not be a miss */
	if (css->outs[co] != NULL)
	{
		FUNC3(("hit\n"));
		return css->outs[co];
	}
	FUNC3(("miss\n"));

	/*
	 * Checking for operation cancel in the inner text search loop seems
	 * unduly expensive.  As a compromise, check during cache misses.
	 */
	if (FUNC1(v->re))
	{
		FUNC2(REG_CANCEL);
		return NULL;
	}

	/*
	 * What set of states would we end up in after consuming the co character?
	 * We first consider PLAIN arcs that consume the character, and then look
	 * to see what LACON arcs could be traversed after consuming it.
	 */
	for (i = 0; i < d->wordsper; i++)
		d->work[i] = 0;			/* build new stateset bitmap in d->work */
	ispost = 0;
	noprogress = 1;
	gotstate = 0;
	for (i = 0; i < d->nstates; i++)
		if (FUNC6(css->states, i))
			for (ca = cnfa->states[i]; ca->co != COLORLESS; ca++)
				if (ca->co == co)
				{
					FUNC0(d->work, ca->to);
					gotstate = 1;
					if (ca->to == cnfa->post)
						ispost = 1;
					if (!(cnfa->stflags[ca->to] & CNFA_NOPROGRESS))
						noprogress = 0;
					FUNC3(("%d -> %d\n", i, ca->to));
				}
	if (!gotstate)
		return NULL;			/* character cannot reach any new state */
	dolacons = (cnfa->flags & HASLACONS);
	sawlacons = 0;
	/* outer loop handles transitive closure of reachable-by-LACON states */
	while (dolacons)
	{
		dolacons = 0;
		for (i = 0; i < d->nstates; i++)
			if (FUNC6(d->work, i))
				for (ca = cnfa->states[i]; ca->co != COLORLESS; ca++)
				{
					if (ca->co < cnfa->ncolors)
						continue;	/* not a LACON arc */
					if (FUNC6(d->work, ca->to))
						continue;	/* arc would be a no-op anyway */
					sawlacons = 1;	/* this LACON affects our result */
					if (!FUNC10(v, cnfa, cp, ca->co))
					{
						if (FUNC7())
							return NULL;
						continue;	/* LACON arc cannot be traversed */
					}
					if (FUNC7())
						return NULL;
					FUNC0(d->work, ca->to);
					dolacons = 1;
					if (ca->to == cnfa->post)
						ispost = 1;
					if (!(cnfa->stflags[ca->to] & CNFA_NOPROGRESS))
						noprogress = 0;
					FUNC3(("%d :> %d\n", i, ca->to));
				}
	}
	h = FUNC4(d->work, d->wordsper);

	/* Is this stateset already in the cache? */
	for (p = d->ssets, i = d->nssused; i > 0; p++, i--)
		if (FUNC5(h, d->work, p, d->wordsper))
		{
			FUNC3(("cached c%d\n", (int) (p - d->ssets)));
			break;				/* NOTE BREAK OUT */
		}
	if (i == 0)
	{							/* nope, need a new cache entry */
		p = FUNC9(v, d, cp, start);
		if (p == NULL)
			return NULL;
		FUNC8(p != css);
		for (i = 0; i < d->wordsper; i++)
			p->states[i] = d->work[i];
		p->hash = h;
		p->flags = (ispost) ? POSTSTATE : 0;
		if (noprogress)
			p->flags |= NOPROGRESS;
		/* lastseen to be dealt with by caller */
	}

	/*
	 * Link new stateset to old, unless a LACON affected the result, in which
	 * case we don't create the link.  That forces future transitions across
	 * this same arc (same prior stateset and character color) to come through
	 * miss() again, so that we can recheck the LACON(s), which might or might
	 * not pass since context will be different.
	 */
	if (!sawlacons)
	{
		FUNC3(("c%d[%d]->c%d\n",
				(int) (css - d->ssets), co, (int) (p - d->ssets)));
		css->outs[co] = p;
		css->inchain[co] = p->ins;
		p->ins.ss = css;
		p->ins.co = co;
	}
	return p;
}