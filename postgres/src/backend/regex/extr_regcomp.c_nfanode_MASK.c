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
struct subre {int /*<<< orphan*/  cnfa; int /*<<< orphan*/  end; int /*<<< orphan*/ * begin; } ;
struct nfa {int /*<<< orphan*/  final; int /*<<< orphan*/  init; } ;
typedef  int /*<<< orphan*/  idbuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfa*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfa*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfa*) ; 
 int /*<<< orphan*/  FUNC7 (struct vars*,struct nfa*) ; 
 struct nfa* FUNC8 (struct vars*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC9 (struct nfa*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct nfa*) ; 
 char* FUNC11 (struct subre*,char*,int) ; 

__attribute__((used)) static long						/* optimize results */
FUNC12(struct vars *v,
		struct subre *t,
		int converttosearch,
		FILE *f)				/* for debug output */
{
	struct nfa *nfa;
	long		ret = 0;

	FUNC2(t->begin != NULL);

#ifdef REG_DEBUG
	if (f != NULL)
	{
		char		idbuf[50];

		fprintf(f, "\n\n\n========= TREE NODE %s ==========\n",
				stid(t, idbuf, sizeof(idbuf)));
	}
#endif
	nfa = FUNC8(v, v->cm, v->nfa);
	FUNC1();
	FUNC4(nfa, t->begin, t->end, nfa->init, nfa->final);
	if (!FUNC0())
		FUNC10(nfa);
	if (!FUNC0())
		ret = FUNC9(nfa, f);
	if (converttosearch && !FUNC0())
		FUNC7(v, nfa);
	if (!FUNC0())
		FUNC3(nfa, &t->cnfa);

	FUNC6(nfa);
	return ret;
}