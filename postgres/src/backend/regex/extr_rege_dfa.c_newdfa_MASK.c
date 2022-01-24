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
struct vars {int eflags; } ;
struct sset {int dummy; } ;
struct dfa {unsigned int* statesarea; unsigned int* work; int cptsmalloced; char* mallocarea; int nssets; int nstates; size_t ncolors; int wordsper; struct sset* ssets; struct sset* search; int /*<<< orphan*/ * lastnopr; int /*<<< orphan*/ * lastpost; struct colormap* cm; struct cnfa* cnfa; scalar_t__ nssused; struct arcp* incarea; struct sset** outsarea; } ;
struct smalldfa {unsigned int* statesarea; struct arcp* incarea; struct sset** outsarea; struct sset* ssets; struct dfa dfa; } ;
struct colormap {int dummy; } ;
struct cnfa {int nstates; size_t ncolors; } ;
struct arcp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FEWCOLORS ; 
 size_t FEWSTATES ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  REG_ESPACE ; 
 int REG_SMALL ; 
 int UBITS ; 
 size_t WORK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dfa*) ; 

__attribute__((used)) static struct dfa *
FUNC4(struct vars *v,
	   struct cnfa *cnfa,
	   struct colormap *cm,
	   struct smalldfa *sml)	/* preallocated space, may be NULL */
{
	struct dfa *d;
	size_t		nss = cnfa->nstates * 2;
	int			wordsper = (cnfa->nstates + UBITS - 1) / UBITS;
	struct smalldfa *smallwas = sml;

	FUNC2(cnfa != NULL && cnfa->nstates != 0);

	if (nss <= FEWSTATES && cnfa->ncolors <= FEWCOLORS)
	{
		FUNC2(wordsper == 1);
		if (sml == NULL)
		{
			sml = (struct smalldfa *) FUNC1(sizeof(struct smalldfa));
			if (sml == NULL)
			{
				FUNC0(REG_ESPACE);
				return NULL;
			}
		}
		d = &sml->dfa;
		d->ssets = sml->ssets;
		d->statesarea = sml->statesarea;
		d->work = &d->statesarea[nss];
		d->outsarea = sml->outsarea;
		d->incarea = sml->incarea;
		d->cptsmalloced = 0;
		d->mallocarea = (smallwas == NULL) ? (char *) sml : NULL;
	}
	else
	{
		d = (struct dfa *) FUNC1(sizeof(struct dfa));
		if (d == NULL)
		{
			FUNC0(REG_ESPACE);
			return NULL;
		}
		d->ssets = (struct sset *) FUNC1(nss * sizeof(struct sset));
		d->statesarea = (unsigned *) FUNC1((nss + WORK) * wordsper *
											sizeof(unsigned));
		d->work = &d->statesarea[nss * wordsper];
		d->outsarea = (struct sset **) FUNC1(nss * cnfa->ncolors *
											  sizeof(struct sset *));
		d->incarea = (struct arcp *) FUNC1(nss * cnfa->ncolors *
											sizeof(struct arcp));
		d->cptsmalloced = 1;
		d->mallocarea = (char *) d;
		if (d->ssets == NULL || d->statesarea == NULL ||
			d->outsarea == NULL || d->incarea == NULL)
		{
			FUNC3(d);
			FUNC0(REG_ESPACE);
			return NULL;
		}
	}

	d->nssets = (v->eflags & REG_SMALL) ? 7 : nss;
	d->nssused = 0;
	d->nstates = cnfa->nstates;
	d->ncolors = cnfa->ncolors;
	d->wordsper = wordsper;
	d->cnfa = cnfa;
	d->cm = cm;
	d->lastpost = NULL;
	d->lastnopr = NULL;
	d->search = d->ssets;

	/* initialization of sset fields is done as needed */

	return d;
}