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
struct state {int dummy; } ;
struct nfa {int dummy; } ;
struct colormap {struct colordesc* cd; } ;
struct colordesc {scalar_t__ sub; int flags; } ;
typedef  scalar_t__ color ;

/* Variables and functions */
 struct colordesc* FUNC0 (struct colormap*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int PSEUDO ; 
 int /*<<< orphan*/  FUNC2 (struct colordesc*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfa*,int,scalar_t__,struct state*,struct state*) ; 

__attribute__((used)) static void
FUNC4(struct nfa *nfa,
		struct colormap *cm,
		int type,
		color but,				/* COLORLESS if no exceptions */
		struct state *from,
		struct state *to)
{
	struct colordesc *cd;
	struct colordesc *end = FUNC0(cm);
	color		co;

	for (cd = cm->cd, co = 0; cd < end && !FUNC1(); cd++, co++)
		if (!FUNC2(cd) && cd->sub != co && co != but &&
			!(cd->flags & PSEUDO))
			FUNC3(nfa, type, co, from, to);
}