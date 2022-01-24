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
struct ep_var {int /*<<< orphan*/  type; int /*<<< orphan*/  mapping; int /*<<< orphan*/  name; int /*<<< orphan*/  var_type; } ;
struct ep_func {int /*<<< orphan*/  sampler_deps; int /*<<< orphan*/  struct_deps; } ;
struct effect_parser {int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_VAR_IN ; 
 int /*<<< orphan*/  EP_VAR_INOUT ; 
 int /*<<< orphan*/  EP_VAR_OUT ; 
 int /*<<< orphan*/  EP_VAR_UNIFORM ; 
 int PARSE_EOF ; 
 int PARSE_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct effect_parser*,char*,int*) ; 
 int /*<<< orphan*/ * FUNC6 (struct effect_parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct effect_parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC8(struct effect_parser *ep,
				      struct ep_func *func, struct ep_var *var)
{
	int code;
	bool var_type_keyword = false;

	if (!FUNC2(&ep->cfp))
		return PARSE_EOF;

	code = FUNC5(ep, "in", &var_type_keyword);
	if (code == PARSE_EOF)
		return PARSE_EOF;
	else if (var_type_keyword)
		var->var_type = EP_VAR_IN;

	if (!var_type_keyword) {
		code = FUNC5(ep, "inout", &var_type_keyword);
		if (code == PARSE_EOF)
			return PARSE_EOF;
		else if (var_type_keyword)
			var->var_type = EP_VAR_INOUT;
	}

	if (!var_type_keyword) {
		code = FUNC5(ep, "out", &var_type_keyword);
		if (code == PARSE_EOF)
			return PARSE_EOF;
		else if (var_type_keyword)
			var->var_type = EP_VAR_OUT;
	}

	if (!var_type_keyword) {
		code = FUNC5(ep, "uniform", &var_type_keyword);
		if (code == PARSE_EOF)
			return PARSE_EOF;
		else if (var_type_keyword)
			var->var_type = EP_VAR_UNIFORM;
	}

	code = FUNC0(&ep->cfp, &var->type, "type", ")");
	if (code != PARSE_SUCCESS)
		return code;

	code = FUNC1(&ep->cfp, &var->name, "name", ")");
	if (code != PARSE_SUCCESS)
		return code;

	if (!FUNC2(&ep->cfp))
		return PARSE_EOF;

	if (FUNC3(&ep->cfp, ":")) {
		code = FUNC1(&ep->cfp, &var->mapping,
				    "mapping specifier", ")");
		if (code != PARSE_SUCCESS)
			return code;

		if (!FUNC2(&ep->cfp))
			return PARSE_EOF;
	}

	if (FUNC7(ep, var->type) != NULL)
		FUNC4(func->struct_deps, &var->type);
	else if (FUNC6(ep, var->type) != NULL)
		FUNC4(func->sampler_deps, &var->type);

	return PARSE_SUCCESS;
}