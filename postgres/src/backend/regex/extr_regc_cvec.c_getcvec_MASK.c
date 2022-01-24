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
struct vars {struct cvec* cv; } ;
struct cvec {int chrspace; int rangespace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_ESPACE ; 
 struct cvec* FUNC1 (struct cvec*) ; 
 int /*<<< orphan*/  FUNC2 (struct cvec*) ; 
 struct cvec* FUNC3 (int,int) ; 

__attribute__((used)) static struct cvec *
FUNC4(struct vars *v,			/* context */
		int nchrs,				/* to hold this many chrs... */
		int nranges)			/* ... and this many ranges */
{
	/* recycle existing transient cvec if large enough */
	if (v->cv != NULL && nchrs <= v->cv->chrspace &&
		nranges <= v->cv->rangespace)
		return FUNC1(v->cv);

	/* nope, make a new one */
	if (v->cv != NULL)
		FUNC2(v->cv);
	v->cv = FUNC3(nchrs, nranges);
	if (v->cv == NULL)
		FUNC0(REG_ESPACE);

	return v->cv;
}