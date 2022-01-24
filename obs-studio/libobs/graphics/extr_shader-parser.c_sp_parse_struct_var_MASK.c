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
struct shader_var {int /*<<< orphan*/  mapping; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct shader_parser {int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFTOKEN_NAME ; 
 int PARSE_BREAK ; 
 int PARSE_CONTINUE ; 
 int PARSE_EOF ; 
 int PARSE_SUCCESS ; 
 int PARSE_UNEXPECTED_BREAK ; 
 int PARSE_UNEXPECTED_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static inline int FUNC5(struct shader_parser *sp,
				      struct shader_var *var)
{
	int code;

	/* -------------------------------------- */
	/* variable type */

	if (!FUNC2(&sp->cfp))
		return PARSE_EOF;

	if (FUNC3(&sp->cfp, ";"))
		return PARSE_CONTINUE;
	if (FUNC3(&sp->cfp, "}"))
		return PARSE_BREAK;

	code = FUNC4(&sp->cfp, CFTOKEN_NAME, "type name", ";");
	if (code != PARSE_SUCCESS)
		return code;

	FUNC0(&sp->cfp, &var->type);

	/* -------------------------------------- */
	/* variable name */

	if (!FUNC2(&sp->cfp))
		return PARSE_EOF;

	if (FUNC3(&sp->cfp, ";"))
		return PARSE_UNEXPECTED_CONTINUE;
	if (FUNC3(&sp->cfp, "}"))
		return PARSE_UNEXPECTED_BREAK;

	code = FUNC4(&sp->cfp, CFTOKEN_NAME, "variable name", ";");
	if (code != PARSE_SUCCESS)
		return code;

	FUNC0(&sp->cfp, &var->name);

	/* -------------------------------------- */
	/* variable mapping if any (POSITION, TEXCOORD, etc) */

	if (!FUNC2(&sp->cfp))
		return PARSE_EOF;

	if (FUNC3(&sp->cfp, ":")) {
		if (!FUNC2(&sp->cfp))
			return PARSE_EOF;

		if (FUNC3(&sp->cfp, ";"))
			return PARSE_UNEXPECTED_CONTINUE;
		if (FUNC3(&sp->cfp, "}"))
			return PARSE_UNEXPECTED_BREAK;

		code = FUNC4(&sp->cfp, CFTOKEN_NAME, "mapping name",
					";");
		if (code != PARSE_SUCCESS)
			return code;

		FUNC0(&sp->cfp, &var->mapping);

		if (!FUNC2(&sp->cfp))
			return PARSE_EOF;
	}

	/* -------------------------------------- */

	if (!FUNC3(&sp->cfp, ";")) {
		if (!FUNC1(&sp->cfp, ";", "}"))
			return PARSE_EOF;
		return PARSE_CONTINUE;
	}

	return PARSE_SUCCESS;
}