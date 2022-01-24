#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int len; char* str; } ;
typedef  TYPE_2__ TokenString ;
struct TYPE_26__ {int size; scalar_t__ data; } ;
struct TYPE_25__ {TYPE_5__* cstr; } ;
struct TYPE_22__ {scalar_t__ t; } ;
struct TYPE_24__ {int* d; TYPE_1__ type; } ;
typedef  TYPE_3__ Sym ;
typedef  TYPE_4__ CValue ;
typedef  TYPE_5__ CString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int const**,TYPE_4__*) ; 
 int TOK_IDENT ; 
 int TOK_STR ; 
 int const TOK_TWOSHARPS ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_4__*) ; 
 scalar_t__ gnu_ext ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_3__**,int const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 TYPE_3__* FUNC9 (TYPE_3__*,int) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static int *FUNC14(Sym **nested_list, const int *macro_str, Sym *args)
{
	int last_tok, t, spc;
	const int *st;
	Sym *s;
	CValue cval;
	TokenString str;
	CString cstr;

	FUNC13 (&str);
	last_tok = 0;
	while (FUNC10 () == 0) {
		FUNC0 (&t, &macro_str, &cval);
		if (!t) {
			break;
		}
		if (t == '#') {
			/* stringize */
			FUNC0 (&t, &macro_str, &cval);
			if (!t) {
				break;
			}
			s = FUNC9 (args, t);
			if (s) {
				FUNC5 (&cstr);
				st = s->d;
				spc = 0;
				while (*st) {
					FUNC0 (&t, &st, &cval);
					if (!FUNC1 (t, &spc)) {
						FUNC2 (&cstr, FUNC6 (t, &cval));
					}
				}
				cstr.size -= spc;
				FUNC3 (&cstr, '\0');
#ifdef PP_DEBUG
				printf ("stringize: %s\n", (char *) cstr.data);
#endif
				/* add string */
				cval.cstr = &cstr;
				FUNC12 (&str, TOK_STR, &cval);
				FUNC4 (&cstr);
			} else {
				FUNC12 (&str, t, &cval);
			}
		} else if (t >= TOK_IDENT) {
			s = FUNC9 (args, t);
			if (s) {
				st = s->d;
				/* if '##' is present before or after, no arg substitution */
				if (*macro_str == TOK_TWOSHARPS || last_tok == TOK_TWOSHARPS) {
					/* special case for var arg macros : ## eats the
					   ',' if empty VA_ARGS variable. */
					/* XXX: test of the ',' is not 100%
					   reliable. should fix it to avoid security
					   problems */
					if (gnu_ext && s->type.t &&
					    last_tok == TOK_TWOSHARPS &&
					    str.len >= 2 && str.str[str.len - 2] == ',') {
						if (*st == 0) {
							/* suppress ',' '##' */
							str.len -= 2;
						} else {
							/* suppress '##' and add variable */
							str.len--;
							goto add_var;
						}
					} else {
						int t1;
add_var:
						for (;;) {
							FUNC0 (&t1, &st, &cval);
							if (!t1) {
								break;
							}
							FUNC12 (&str, t1, &cval);
						}
					}
				} else {
					/* NOTE: the stream cannot be read when macro
					   substituing an argument */
					FUNC7 (&str, nested_list, st, NULL);
				}
			} else {
				FUNC11 (&str, t);
			}
		} else {
			FUNC12 (&str, t, &cval);
		}
		last_tok = t;
	}
	FUNC11 (&str, 0);
	return str.str;
}