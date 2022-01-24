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
struct TYPE_6__ {int /*<<< orphan*/ * str; } ;
typedef  TYPE_1__ TokenString ;
struct TYPE_7__ {int i; } ;

/* Variables and functions */
 int TOK_CINT ; 
 int TOK_DEFINED ; 
 int TOK_EOF ; 
 int TOK_IDENT ; 
 int TOK_LINEFEED ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * macro_ptr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int tok ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_2__ tokc ; 

__attribute__((used)) static int FUNC8(void)
{
	int c, t;
	TokenString str;

	FUNC7 (&str);
	while (tok != TOK_LINEFEED && tok != TOK_EOF) {
		FUNC2 ();/* do macro subst */
		if (tok == TOK_DEFINED) {
			FUNC3 ();
			t = tok;
			if (t == '(') {
				FUNC3 ();
			}
			c = FUNC0 (tok) != 0;
			if (t == '(') {
				FUNC3 ();
			}
			tok = TOK_CINT;
			tokc.i = c;
		} else if (tok >= TOK_IDENT) {
			/* if undefined macro */
			tok = TOK_CINT;
			tokc.i = 0;
		}
		FUNC5 (&str);
	}
	FUNC4 (&str, -1);	/* simulate end of file */
	FUNC4 (&str, 0);
	/* now evaluate C constant expression */
	macro_ptr = str.str;
	FUNC2 ();
	c = FUNC1 ();
	macro_ptr = NULL;
	FUNC6 (str.str);
	return c != 0;
}