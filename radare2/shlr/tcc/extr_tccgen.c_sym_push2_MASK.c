#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int t; int /*<<< orphan*/ * ref; } ;
struct TYPE_9__ {int v; long long c; struct TYPE_9__* prev; int /*<<< orphan*/ * next; int /*<<< orphan*/ * d; TYPE_1__ type; int /*<<< orphan*/ * asm_label; } ;
typedef  TYPE_2__ Sym ;

/* Variables and functions */
 int SYM_FIELD ; 
 int SYM_FIRST_ANOM ; 
 int SYM_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 TYPE_2__* local_stack ; 
 TYPE_2__* scope_stack_bottom ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

Sym *FUNC3(Sym **ps, int v, int t, long long c) {
	Sym *s;
	if (ps == &local_stack) {
		for (s = *ps; s && s != scope_stack_bottom; s = s->prev) {
			if (!(v & SYM_FIELD) && (v & ~SYM_STRUCT) < SYM_FIRST_ANOM && s->v == v) {
				FUNC2 ("incompatible types for redefinition of '%s'",
					FUNC0 (v, NULL));
				return NULL;
			}
		}
	}
	// printf (" %d %ld set symbol '%s'\n", t, c, get_tok_str(v, NULL));
	// s = *ps;
	s = FUNC1 ();
	s->asm_label = NULL;
	s->v = v;
	s->type.t = t;
	s->type.ref = NULL;
#ifdef _WIN64
	s->d = NULL;
#endif
	s->c = c;
	s->next = NULL;
	/* add in stack */
	s->prev = *ps;
	*ps = s;
	return s;
}