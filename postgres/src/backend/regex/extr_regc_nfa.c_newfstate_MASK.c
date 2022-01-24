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
struct state {char flag; } ;
struct nfa {int dummy; } ;

/* Variables and functions */
 struct state* FUNC0 (struct nfa*) ; 

__attribute__((used)) static struct state *			/* NULL on error */
FUNC1(struct nfa *nfa, int flag)
{
	struct state *s;

	s = FUNC0(nfa);
	if (s != NULL)
		s->flag = (char) flag;
	return s;
}