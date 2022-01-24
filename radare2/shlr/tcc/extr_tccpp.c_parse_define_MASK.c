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
struct TYPE_8__ {int /*<<< orphan*/  str; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ TokenString ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef  TYPE_2__ Sym ;

/* Variables and functions */
 int MACRO_FUNC ; 
 int MACRO_OBJ ; 
 int SYM_FIELD ; 
 int TOK_DOTS ; 
 char TOK_EOF ; 
 int TOK_IDENT ; 
 char TOK_LINEFEED ; 
 char TOK_TWOSHARPS ; 
 int TOK___VA_ARGS__ ; 
 scalar_t__ FUNC0 (char,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  define_stack ; 
 char* FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ gnu_ext ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char tok ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  tokc ; 

void FUNC12(void)
{
	Sym *s, *first, **ps;
	int v, t, varg, is_vaargs, spc;
	TokenString str;

	v = tok;
	if (v < TOK_IDENT) {
		FUNC7 ("invalid macro name '%s'", FUNC2 (tok, &tokc));
	}
	/* XXX: should check if same macro (ANSI) */
	first = NULL;
	t = MACRO_OBJ;
	/* '(' must be just after macro definition for MACRO_FUNC */
	FUNC4 ();
	if (tok == '(') {
		FUNC3 ();
		ps = &first;
		while (tok != ')') {
			varg = tok;
			FUNC3 ();
			is_vaargs = 0;
			if (varg == TOK_DOTS) {
				varg = TOK___VA_ARGS__;
				is_vaargs = 1;
			} else if (tok == TOK_DOTS && gnu_ext) {
				is_vaargs = 1;
				FUNC3 ();
			}
			if (varg < TOK_IDENT) {
				FUNC7 ("badly punctuated parameter list");
			}
			s = FUNC6 (&define_stack, varg | SYM_FIELD, is_vaargs, 0);
			if (!s) {
				return;
			}
			*ps = s;
			ps = &s->next;
			if (tok != ',') {
				break;
			}
			FUNC3 ();
		}
		if (tok == ')') {
			FUNC4 ();
		}
		t = MACRO_FUNC;
	}
	FUNC11 (&str);
	spc = 2;
	/* EOF testing necessary for '-D' handling */
	while (tok != TOK_LINEFEED && tok != TOK_EOF) {
		/* remove spaces around ## and after '#' */
		if (TOK_TWOSHARPS == tok) {
			if (1 == spc) {
				--str.len;
			}
			spc = 2;
		} else if ('#' == tok) {
			spc = 2;
		} else if (FUNC0 (tok, &spc)) {
			goto skip;
		}
		FUNC10 (&str, tok, &tokc);
skip:
		FUNC4 ();
	}
	if (spc == 1) {
		--str.len;	/* remove trailing space */
	}
	FUNC9 (&str, 0);
#ifdef PP_DEBUG
	printf ("define %s %d: ", get_tok_str (v, NULL), t);
	tok_print (str.str);
#endif
	FUNC1 (v, t, str.str, first);
}