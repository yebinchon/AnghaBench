#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  sym_label; } ;
struct TYPE_6__ {scalar_t__ r; size_t v; int /*<<< orphan*/  prev_tok; struct TYPE_6__* prev; } ;
typedef  TYPE_1__ Sym ;

/* Variables and functions */
 scalar_t__ LABEL_DECLARED ; 
 scalar_t__ LABEL_FORWARD ; 
 size_t TOK_IDENT ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_2__** table_ident ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void FUNC4(Sym **ptop, Sym *slast)
{
	Sym *s, *s1;
	for (s = *ptop; s != slast; s = s1) {
		s1 = s->prev;
		if (s->r == LABEL_DECLARED) {
			FUNC3 ("label '%s' declared but not used", FUNC0 (s->v, NULL));
		} else if (s->r == LABEL_FORWARD) {
			FUNC2 ("label '%s' used but not defined",
				FUNC0 (s->v, NULL));
		}
		/* remove label */
		table_ident[s->v - TOK_IDENT]->sym_label = s->prev_tok;
		FUNC1 (s);
	}
	*ptop = slast;
}