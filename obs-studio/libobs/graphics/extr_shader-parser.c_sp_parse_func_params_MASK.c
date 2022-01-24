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
struct shader_var {int dummy; } ;
struct shader_parser {int /*<<< orphan*/  cfp; } ;
struct shader_func {int /*<<< orphan*/  params; } ;
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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct shader_var*) ; 
 int /*<<< orphan*/  FUNC6 (struct shader_var*) ; 
 int /*<<< orphan*/  FUNC7 (struct shader_var*) ; 
 int FUNC8 (struct shader_parser*,struct shader_var*) ; 

__attribute__((used)) static bool FUNC9(struct shader_parser *sp,
				 struct shader_func *func)
{
	struct cf_token peek;
	int code;

	FUNC3(&peek);

	if (!FUNC2(&sp->cfp, &peek))
		return false;

	if (*peek.str.array == ')') {
		FUNC1(&sp->cfp);
		goto exit;
	}

	do {
		struct shader_var var;
		FUNC7(&var);

		if (!FUNC4(&sp->cfp, "(") && !FUNC4(&sp->cfp, ","))
			FUNC0(&sp->cfp);

		code = FUNC8(sp, &var);
		if (code != PARSE_SUCCESS) {
			FUNC6(&var);

			if (code == PARSE_CONTINUE)
				goto exit;
			else if (code == PARSE_EOF)
				return false;
		}

		FUNC5(func->params, &var);
	} while (!FUNC4(&sp->cfp, ")"));

exit:
	return true;
}