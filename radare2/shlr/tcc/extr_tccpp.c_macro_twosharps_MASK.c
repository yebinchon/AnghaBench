#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int len; int* str; } ;
typedef  TYPE_1__ TokenString ;
struct TYPE_13__ {scalar_t__* buf_ptr; int /*<<< orphan*/  buffer; } ;
struct TYPE_12__ {int size; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  CValue ;
typedef  TYPE_2__ CString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int const**,int /*<<< orphan*/ *) ; 
 int TOK_NOSUBST ; 
 int TOK_TWOSHARPS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_6__* file ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tcc_state ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*) ; 
 int tok ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  tokc ; 

__attribute__((used)) static inline int *FUNC15(const int *macro_str)
{
	const int *ptr;
	int t;
	TokenString macro_str1;
	CString cstr;
	int n, start_of_nosubsts;

	/* we search the first '##' */
	for (ptr = macro_str;;) {
		CValue cval;
		FUNC0 (&t, &ptr, &cval);
		if (t == TOK_TWOSHARPS) {
			break;
		}
		/* nothing more to do if end of string */
		if (t == 0) {
			return NULL;
		}
	}

	/* we saw '##', so we need more processing to handle it */
	start_of_nosubsts = -1;
	FUNC14 (&macro_str1);
	for (ptr = macro_str;;) {
		FUNC0 (&tok, &ptr, &tokc);
		if (tok == 0) {
			break;
		}
		if (tok == TOK_TWOSHARPS) {
			continue;
		}
		if (tok == TOK_NOSUBST && start_of_nosubsts < 0) {
			start_of_nosubsts = macro_str1.len;
		}
		while (*ptr == TOK_TWOSHARPS) {
			/* given 'a##b', remove nosubsts preceding 'a' */
			if (start_of_nosubsts >= 0) {
				macro_str1.len = start_of_nosubsts;
			}
			/* given 'a##b', skip '##' */
			t = *++ptr;
			/* given 'a##b', remove nosubsts preceding 'b' */
			while (t == TOK_NOSUBST)
				t = *++ptr;
			if (t && t != TOK_TWOSHARPS) {
				CValue cval;
				FUNC0 (&t, &ptr, &cval);
				/* We concatenate the two tokens */
				FUNC4 (&cstr);
				FUNC1 (&cstr, FUNC5 (tok, &tokc));
				n = cstr.size;
				FUNC1 (&cstr, FUNC5 (t, &cval));
				FUNC2 (&cstr, '\0');

				FUNC10 (tcc_state, ":paste:", cstr.size);
				FUNC6 (file->buffer, cstr.data, cstr.size);
				while (FUNC9 () == 0) {
					FUNC7 ();
					if (0 == *file->buf_ptr) {
						break;
					}
					FUNC13 (&macro_str1, tok, &tokc);
					FUNC11 ("pasting \"%.*s\" and \"%s\" does not give a valid preprocessing token",
						n, (char *) cstr.data, (char *) cstr.data + n);
				}
				FUNC8 ();
				FUNC3 (&cstr);
			}
		}
		if (tok != TOK_NOSUBST) {
			start_of_nosubsts = -1;
		}
		FUNC13 (&macro_str1, tok, &tokc);
	}
	FUNC12 (&macro_str1, 0);
	return macro_str1.str;
}