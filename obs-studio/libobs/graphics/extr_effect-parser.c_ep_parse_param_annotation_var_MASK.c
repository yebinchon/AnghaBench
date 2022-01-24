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
struct ep_param {int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct effect_parser {int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFTOKEN_NAME ; 
 int PARSE_BREAK ; 
 int PARSE_CONTINUE ; 
 int PARSE_EOF ; 
 int PARSE_SUCCESS ; 
 int PARSE_UNEXPECTED_BREAK ; 
 int PARSE_UNEXPECTED_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct effect_parser*,struct ep_param*) ; 

__attribute__((used)) static inline int FUNC8(struct effect_parser *ep,
						struct ep_param *var)
{
	int code;

	/* -------------------------------------- */
	/* variable type */

	if (!FUNC4(&ep->cfp))
		return PARSE_EOF;

	if (FUNC5(&ep->cfp, ";"))
		return PARSE_CONTINUE;
	if (FUNC5(&ep->cfp, ">"))
		return PARSE_BREAK;

	code = FUNC6(&ep->cfp, CFTOKEN_NAME, "type name", ";");
	if (code != PARSE_SUCCESS)
		return code;

	FUNC0(var->type);
	FUNC2(&ep->cfp, &var->type);

	/* -------------------------------------- */
	/* variable name */

	if (!FUNC4(&ep->cfp))
		return PARSE_EOF;

	if (FUNC5(&ep->cfp, ";")) {
		FUNC1(&ep->cfp, "variable name");
		return PARSE_UNEXPECTED_CONTINUE;
	}
	if (FUNC5(&ep->cfp, ">")) {
		FUNC1(&ep->cfp, "variable name");
		return PARSE_UNEXPECTED_BREAK;
	}

	code = FUNC6(&ep->cfp, CFTOKEN_NAME, "variable name", ";");
	if (code != PARSE_SUCCESS)
		return code;

	FUNC0(var->name);
	FUNC2(&ep->cfp, &var->name);

	/* -------------------------------------- */
	/* variable mapping if any (POSITION, TEXCOORD, etc) */

	if (!FUNC4(&ep->cfp))
		return PARSE_EOF;

	if (FUNC5(&ep->cfp, ":")) {
		FUNC1(&ep->cfp, "= or ;");
		return PARSE_UNEXPECTED_BREAK;
	} else if (FUNC5(&ep->cfp, ">")) {
		FUNC1(&ep->cfp, "= or ;");
		return PARSE_UNEXPECTED_BREAK;
	} else if (FUNC5(&ep->cfp, "=")) {
		if (!FUNC7(ep, var)) {
			FUNC1(&ep->cfp, "assignment value");
			return PARSE_UNEXPECTED_BREAK;
		}
	}

	/* -------------------------------------- */

	if (!FUNC5(&ep->cfp, ";")) {
		if (!FUNC3(&ep->cfp, ";", ">")) {
			FUNC1(&ep->cfp, "; or >");
			return PARSE_EOF;
		}
		return PARSE_CONTINUE;
	}

	return PARSE_SUCCESS;
}