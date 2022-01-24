#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ep_var {int dummy; } ;
struct ep_func {int /*<<< orphan*/  param_vars; } ;
struct effect_parser {int /*<<< orphan*/  cfp; } ;
struct TYPE_2__ {char* array; } ;
struct cf_token {TYPE_1__ str; } ;

/* Variables and functions */
 int PARSE_CONTINUE ; 
 int PARSE_EOF ; 
 int PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cf_token*) ; 
 int /*<<< orphan*/  FUNC3 (struct cf_token*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ep_var*) ; 
 int FUNC6 (struct effect_parser*,struct ep_func*,struct ep_var*) ; 
 int /*<<< orphan*/  FUNC7 (struct ep_var*) ; 
 int /*<<< orphan*/  FUNC8 (struct ep_var*) ; 

__attribute__((used)) static bool FUNC9(struct effect_parser *ep, struct ep_func *func)
{
	struct cf_token peek;
	int code;

	FUNC3(&peek);

	if (!FUNC2(&ep->cfp, &peek))
		return false;

	if (*peek.str.array == ')') {
		FUNC1(&ep->cfp);
		goto exit;
	}

	do {
		struct ep_var var;
		FUNC8(&var);

		if (!FUNC4(&ep->cfp, "(") && !FUNC4(&ep->cfp, ","))
			FUNC0(&ep->cfp);

		code = FUNC6(ep, func, &var);
		if (code != PARSE_SUCCESS) {
			FUNC7(&var);

			if (code == PARSE_CONTINUE)
				goto exit;
			else if (code == PARSE_EOF)
				return false;
		}

		FUNC5(func->param_vars, &var);
	} while (!FUNC4(&ep->cfp, ")"));

exit:
	return true;
}