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
struct shader_var {int /*<<< orphan*/  mapping; int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/  var_type; } ;
struct shader_parser {int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 int PARSE_EOF ; 
 int PARSE_SUCCESS ; 
 int /*<<< orphan*/  SHADER_VAR_IN ; 
 int /*<<< orphan*/  SHADER_VAR_INOUT ; 
 int /*<<< orphan*/  SHADER_VAR_OUT ; 
 int /*<<< orphan*/  SHADER_VAR_UNIFORM ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct shader_parser*,char*,int*) ; 

__attribute__((used)) static inline int FUNC5(struct shader_parser *sp,
				      struct shader_var *var)
{
	int code;
	bool var_type_keyword = false;

	if (!FUNC2(&sp->cfp))
		return PARSE_EOF;

	code = FUNC4(sp, "in", &var_type_keyword);
	if (code == PARSE_EOF)
		return PARSE_EOF;
	else if (var_type_keyword)
		var->var_type = SHADER_VAR_IN;

	if (!var_type_keyword) {
		code = FUNC4(sp, "inout", &var_type_keyword);
		if (code == PARSE_EOF)
			return PARSE_EOF;
		else if (var_type_keyword)
			var->var_type = SHADER_VAR_INOUT;
	}

	if (!var_type_keyword) {
		code = FUNC4(sp, "out", &var_type_keyword);
		if (code == PARSE_EOF)
			return PARSE_EOF;
		else if (var_type_keyword)
			var->var_type = SHADER_VAR_OUT;
	}

	if (!var_type_keyword) {
		code = FUNC4(sp, "uniform", &var_type_keyword);
		if (code == PARSE_EOF)
			return PARSE_EOF;
		else if (var_type_keyword)
			var->var_type = SHADER_VAR_UNIFORM;
	}

	code = FUNC0(&sp->cfp, &var->type, "type", ")");
	if (code != PARSE_SUCCESS)
		return code;

	code = FUNC1(&sp->cfp, &var->name, "name", ")");
	if (code != PARSE_SUCCESS)
		return code;

	if (!FUNC2(&sp->cfp))
		return PARSE_EOF;

	if (FUNC3(&sp->cfp, ":")) {
		code = FUNC1(&sp->cfp, &var->mapping,
				    "mapping specifier", ")");
		if (code != PARSE_SUCCESS)
			return code;

		if (!FUNC2(&sp->cfp))
			return PARSE_EOF;
	}

	return PARSE_SUCCESS;
}