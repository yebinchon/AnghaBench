#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int t; } ;
struct TYPE_9__ {int v; TYPE_2__ type; struct TYPE_9__* next; } ;
typedef  TYPE_1__ Sym ;
typedef  TYPE_2__ CType ;
typedef  int /*<<< orphan*/  AttributeDef ;

/* Variables and functions */
 int SYM_FIELD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char TOK_ASM1 ; 
 char TOK_ASM2 ; 
 char TOK_ASM3 ; 
 char TOK_EOF ; 
 int /*<<< orphan*/  TYPE_DIRECT ; 
 int VT_STORAGE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 scalar_t__ FUNC9 () ; 
 char tok ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(Sym *func_sym) {
	AttributeDef ad;
	int v;
	Sym *s = NULL;
	CType btype, type;

	/* parse each declaration */
	while (FUNC9 () == 0 && tok != '{' && tok != ';' && tok != ',' && tok != TOK_EOF &&
	       tok != TOK_ASM1 && tok != TOK_ASM2 && tok != TOK_ASM3) {
		if (!FUNC7 (&btype, &ad)) {
			FUNC2 ("declaration list");
		}
		if ((FUNC4(&btype) || FUNC5(&btype)) && tok == ';') {
			/* we accept no variable after */
		} else {
			while (FUNC9 () == 0) {
				int found;
				type = btype;
				FUNC10 (&type, &ad, &v, TYPE_DIRECT);
				/* find parameter in function parameter list */
				s = func_sym;
				found = 0;
				while ((s = s->next) != NULL) {
					if ((s->v & ~SYM_FIELD) == v) {
						found = 1;
						break;
					}
				}
				if (found == 0) {
					FUNC0 ("declaration for parameter '%s' but no such parameter",
						FUNC3 (v, NULL));
				}
				/* check that no storage specifier except 'register' was given */
				if (type.t & VT_STORAGE) {
					FUNC0 ("storage class specified for '%s'", FUNC3 (v, NULL));
				}
				FUNC1 (&type);
				/* we can add the type (NOTE: it could be local to the function) */
				if (s) {
					s->type = type;
				}
				/* accept other parameters */
				if (tok == ',') {
					FUNC6 ();
				} else {
					break;
				}
			}
		}
		FUNC8 (';');
	}
}