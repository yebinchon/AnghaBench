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
struct TYPE_7__ {TYPE_1__* sym_define; } ;
struct TYPE_6__ {int* d; struct TYPE_6__* next; } ;
typedef  TYPE_1__ Sym ;

/* Variables and functions */
 int TOK_IDENT ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  define_stack ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__** table_ident ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5(int v, int macro_type, int *str, Sym *first_arg)
{
	Sym *s;

	s = FUNC0 (v);
	if (s && !FUNC2 (s->d, str)) {
		FUNC4 ("%s redefined", FUNC1 (v, NULL));
	}

	s = FUNC3 (&define_stack, v, macro_type, 0);
	if (!s) {
		return;
	}
	s->d = str;
	s->next = first_arg;
	if (v >= TOK_IDENT) {
		table_ident[v - TOK_IDENT]->sym_define = s;
	}
}