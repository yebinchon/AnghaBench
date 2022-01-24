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
struct state {struct arc* outs; struct arc* ins; } ;
struct nfa {int dummy; } ;
struct arc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfa*,struct arc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfa*,struct state*) ; 

__attribute__((used)) static void
FUNC2(struct nfa *nfa,
		  struct state *s)
{
	struct arc *a;

	while ((a = s->ins) != NULL)
		FUNC0(nfa, a);
	while ((a = s->outs) != NULL)
		FUNC0(nfa, a);
	FUNC1(nfa, s);
}