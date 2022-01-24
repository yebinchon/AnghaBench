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
struct state {struct arc* outs; } ;
struct nfa {int dummy; } ;
struct arc {int /*<<< orphan*/  co; struct arc* outchain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfa*,int,int /*<<< orphan*/ ,struct state*,struct state*) ; 

__attribute__((used)) static void
FUNC2(struct nfa *nfa,
		  struct state *old,
		  struct state *from,
		  struct state *to,
		  int type)
{
	struct arc *a;

	FUNC0(old != from);

	for (a = old->outs; a != NULL; a = a->outchain)
		FUNC1(nfa, type, a->co, from, to);
}