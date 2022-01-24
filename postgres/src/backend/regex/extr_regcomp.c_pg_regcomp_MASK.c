#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct vars {scalar_t__ err; int cflags; int nsubs; int nlacons; struct subre* lacons; int /*<<< orphan*/  ntree; TYPE_4__* tree; TYPE_1__* re; scalar_t__ nsubexp; TYPE_2__* nfa; int /*<<< orphan*/ * cm; int /*<<< orphan*/  nlcolor; int /*<<< orphan*/ * cv; scalar_t__ spaceused; int /*<<< orphan*/ * cv2; int /*<<< orphan*/ * treefree; int /*<<< orphan*/ * treechain; int /*<<< orphan*/ * wordchrs; int /*<<< orphan*/ ** subs; int /*<<< orphan*/ ** sub10; int /*<<< orphan*/ * savestop; int /*<<< orphan*/  savenow; int /*<<< orphan*/  const* now; int /*<<< orphan*/  const* stop; } ;
struct subre {int /*<<< orphan*/  subno; } ;
struct nfa {int dummy; } ;
struct guts {int nlacons; int cflags; struct subre* lacons; int /*<<< orphan*/  compare; int /*<<< orphan*/  ntree; TYPE_4__* tree; scalar_t__ nsub; int /*<<< orphan*/  info; int /*<<< orphan*/  magic; int /*<<< orphan*/  search; int /*<<< orphan*/  cmap; } ;
struct TYPE_17__ {int re_csize; scalar_t__ re_nsub; int /*<<< orphan*/  re_info; int /*<<< orphan*/ * re_guts; void* re_fns; int /*<<< orphan*/  re_collation; int /*<<< orphan*/  re_magic; } ;
typedef  TYPE_1__ regex_t ;
typedef  int /*<<< orphan*/  chr ;
struct TYPE_19__ {int flags; } ;
struct TYPE_18__ {int /*<<< orphan*/  final; int /*<<< orphan*/  init; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DISCARD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  COLORLESS ; 
 int /*<<< orphan*/  EOS ; 
 int /*<<< orphan*/  GUTSMAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLAIN ; 
 int REG_ADVANCED ; 
 int REG_ADVF ; 
 int REG_DUMP ; 
 int /*<<< orphan*/  REG_ESPACE ; 
 int REG_EXPANDED ; 
 int REG_EXTENDED ; 
 int REG_ICASE ; 
 int REG_INVARG ; 
 int REG_NEWLINE ; 
 int REG_NLANCH ; 
 int REG_NLSTOP ; 
 int REG_PROGRESS ; 
 int REG_QUOTE ; 
 int /*<<< orphan*/  REG_USHORTEST ; 
 int /*<<< orphan*/  REMAGIC ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int SHORTER ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  casecmp ; 
 int /*<<< orphan*/  FUNC8 (struct vars*) ; 
 int /*<<< orphan*/  cmp ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC14 (struct vars*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  functions ; 
 int /*<<< orphan*/  FUNC15 (struct vars*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct vars*) ; 
 int /*<<< orphan*/  FUNC17 (struct vars*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC19 (int,int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 TYPE_2__* FUNC21 (struct vars*,int /*<<< orphan*/ *,struct nfa*) ; 
 int /*<<< orphan*/  FUNC22 (struct vars*,struct subre*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct vars*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct vars*,TYPE_4__*) ; 
 TYPE_4__* FUNC28 (struct vars*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC32(regex_t *re,
		   const chr *string,
		   size_t len,
		   int flags,
		   Oid collation)
{
	struct vars var;
	struct vars *v = &var;
	struct guts *g;
	int			i;
	size_t		j;

#ifdef REG_DEBUG
	FILE	   *debug = (flags & REG_PROGRESS) ? stdout : (FILE *) NULL;
#else
	FILE	   *debug = (FILE *) NULL;
#endif

#define  CNOERR()	 { if (ISERR()) return freev(v, v->err); }

	/* sanity checks */

	if (re == NULL || string == NULL)
		return REG_INVARG;
	if ((flags & REG_QUOTE) &&
		(flags & (REG_ADVANCED | REG_EXPANDED | REG_NEWLINE)))
		return REG_INVARG;
	if (!(flags & REG_EXTENDED) && (flags & REG_ADVF))
		return REG_INVARG;

	/* Initialize locale-dependent support */
	FUNC29(collation);

	/* initial setup (after which freev() is callable) */
	v->re = re;
	v->now = string;
	v->stop = v->now + len;
	v->savenow = *(v->savestop = NULL);
	v->err = 0;
	v->cflags = flags;
	v->nsubexp = 0;
	v->subs = v->sub10;
	v->nsubs = 10;
	for (j = 0; j < v->nsubs; j++)
		v->subs[j] = NULL;
	v->nfa = NULL;
	v->cm = NULL;
	v->nlcolor = COLORLESS;
	v->wordchrs = NULL;
	v->tree = NULL;
	v->treechain = NULL;
	v->treefree = NULL;
	v->cv = NULL;
	v->cv2 = NULL;
	v->lacons = NULL;
	v->nlacons = 0;
	v->spaceused = 0;
	re->re_magic = REMAGIC;
	re->re_info = 0;			/* bits get set during parse */
	re->re_csize = sizeof(chr);
	re->re_collation = collation;
	re->re_guts = NULL;
	re->re_fns = FUNC5(&functions);

	/* more complex setup, malloced things */
	re->re_guts = FUNC5(FUNC2(sizeof(struct guts)));
	if (re->re_guts == NULL)
		return FUNC14(v, REG_ESPACE);
	g = (struct guts *) re->re_guts;
	g->tree = NULL;
	FUNC15(v, &g->cmap);
	v->cm = &g->cmap;
	g->lacons = NULL;
	g->nlacons = 0;
	FUNC6(g->search);
	v->nfa = FUNC21(v, v->cm, (struct nfa *) NULL);
	CNOERR();
	/* set up a reasonably-sized transient cvec for getcvec usage */
	v->cv = FUNC19(100, 20);
	if (v->cv == NULL)
		return FUNC14(v, REG_ESPACE);

	/* parsing */
	FUNC16(v);				/* also handles prefixes */
	if ((v->cflags & REG_NLSTOP) || (v->cflags & REG_NLANCH))
	{
		/* assign newline a unique color */
		v->nlcolor = FUNC31(v->cm, FUNC20());
		FUNC25(v->nfa, v->cm);
	}
	CNOERR();
	v->tree = FUNC28(v, EOS, PLAIN, v->nfa->init, v->nfa->final);
	FUNC7(FUNC4(EOS));			/* even if error; ISERR() => SEE(EOS) */
	CNOERR();
	FUNC7(v->tree != NULL);

	/* finish setup of nfa and its subre tree */
	FUNC30(v->nfa);
	CNOERR();
#ifdef REG_DEBUG
	if (debug != NULL)
	{
		fprintf(debug, "\n\n\n========= RAW ==========\n");
		dumpnfa(v->nfa, debug);
		dumpst(v->tree, debug, 1);
	}
#endif
	FUNC27(v, v->tree);
	v->ntree = FUNC24(v->tree, 1);
	FUNC18(v->tree);
	FUNC8(v);
#ifdef REG_DEBUG
	if (debug != NULL)
	{
		fprintf(debug, "\n\n\n========= TREE FIXED ==========\n");
		dumpst(v->tree, debug, 1);
	}
#endif

	/* build compacted NFAs for tree and lacons */
	re->re_info |= FUNC23(v, v->tree, debug);
	CNOERR();
	FUNC7(v->nlacons == 0 || v->lacons != NULL);
	for (i = 1; i < v->nlacons; i++)
	{
		struct subre *lasub = &v->lacons[i];

#ifdef REG_DEBUG
		if (debug != NULL)
			fprintf(debug, "\n\n\n========= LA%d ==========\n", i);
#endif

		/* Prepend .* to pattern if it's a lookbehind LACON */
		FUNC22(v, lasub, !FUNC1(lasub->subno), debug);
	}
	CNOERR();
	if (v->tree->flags & SHORTER)
		FUNC3(REG_USHORTEST);

	/* build compacted NFAs for tree, lacons, fast search */
#ifdef REG_DEBUG
	if (debug != NULL)
		fprintf(debug, "\n\n\n========= SEARCH ==========\n");
#endif
	/* can sacrifice main NFA now, so use it as work area */
	(DISCARD) FUNC26(v->nfa, debug);
	CNOERR();
	FUNC17(v, v->nfa);
	CNOERR();
	FUNC9(v->nfa, &g->search);
	CNOERR();

	/* looks okay, package it up */
	re->re_nsub = v->nsubexp;
	v->re = NULL;				/* freev no longer frees re */
	g->magic = GUTSMAGIC;
	g->cflags = v->cflags;
	g->info = re->re_info;
	g->nsub = re->re_nsub;
	g->tree = v->tree;
	v->tree = NULL;
	g->ntree = v->ntree;
	g->compare = (v->cflags & REG_ICASE) ? casecmp : cmp;
	g->lacons = v->lacons;
	v->lacons = NULL;
	g->nlacons = v->nlacons;

#ifdef REG_DEBUG
	if (flags & REG_DUMP)
		dump(re, stdout);
#endif

	FUNC7(v->err == 0);
	return FUNC14(v, 0);
}