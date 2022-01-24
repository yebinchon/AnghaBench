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
struct macro_level {int* p; struct macro_level* prev; } ;
typedef  int /*<<< orphan*/  TokenString ;
typedef  int /*<<< orphan*/  Sym ;
typedef  int /*<<< orphan*/  CValue ;

/* Variables and functions */
 int PARSE_FLAG_SPACES ; 
 int /*<<< orphan*/  FUNC0 (int*,int const**,int /*<<< orphan*/ *) ; 
 int TOK_NOSUBST ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int* macro_ptr ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,struct macro_level**) ; 
 int* FUNC4 (int const*) ; 
 int parse_flags ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 () ; 
 int tok ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 

__attribute__((used)) static void FUNC10(TokenString *tok_str, Sym **nested_list,
			const int *macro_str, struct macro_level **can_read_stream)
{
	Sym *s;
	int *macro_str1;
	const int *ptr;
	int t, ret, spc;
	CValue cval;
	struct macro_level ml;
	int force_blank;

	/* first scan for '##' operator handling */
	ptr = macro_str;
	macro_str1 = FUNC4 (ptr);

	if (macro_str1) {
		ptr = macro_str1;
	}
	spc = 0;
	force_blank = 0;

	while (FUNC6 () == 0) {
		/* NOTE: ptr == NULL can only happen if tokens are read from
		   file stream due to a macro function call */
		if (ptr == NULL) {
			break;
		}
		FUNC0 (&t, &ptr, &cval);
		if (t == 0) {
			break;
		}
		if (t == TOK_NOSUBST) {
			/* following token has already been subst'd. just copy it on */
			FUNC8 (tok_str, TOK_NOSUBST, NULL);
			FUNC0 (&t, &ptr, &cval);
			goto no_subst;
		}
		s = FUNC2 (t);
		if (s != NULL) {
			/* if nested substitution, do nothing */
			if (FUNC5 (*nested_list, t)) {
				/* and mark it as TOK_NOSUBST, so it doesn't get subst'd again */
				FUNC8 (tok_str, TOK_NOSUBST, NULL);
				goto no_subst;
			}
			ml.p = macro_ptr;
			if (can_read_stream) {
				ml.prev = *can_read_stream, *can_read_stream = &ml;
			}
			macro_ptr = (int *) ptr;
			tok = t;
			ret = FUNC3 (tok_str, nested_list, s, can_read_stream);
			ptr = (int *) macro_ptr;
			macro_ptr = ml.p;
			if (can_read_stream && *can_read_stream == &ml) {
				*can_read_stream = ml.prev;
			}
			if (ret != 0) {
				goto no_subst;
			}
			if (parse_flags & PARSE_FLAG_SPACES) {
				force_blank = 1;
			}
		} else {
no_subst:
			if (force_blank) {
				FUNC7 (tok_str, ' ');
				spc = 1;
				force_blank = 0;
			}
			if (!FUNC1 (t, &spc)) {
				FUNC8 (tok_str, t, &cval);
			}
		}
	}
	if (macro_str1) {
		FUNC9 (macro_str1);
	}
}