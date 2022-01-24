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
struct strref {int dummy; } ;
struct decl_param {scalar_t__ flags; int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
struct decl_info {int /*<<< orphan*/  params; } ;
struct cf_parser {int dummy; } ;

/* Variables and functions */
 scalar_t__ CALL_PARAM_IN ; 
 int PARSE_CONTINUE ; 
 int PARSE_SUCCESS ; 
 int /*<<< orphan*/  TYPE_OR_STORAGE ; 
 int /*<<< orphan*/  FUNC0 (struct cf_parser*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_parser*,char*,char*) ; 
 int FUNC2 (struct cf_parser*,int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC3 (struct cf_parser*,struct strref*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct decl_param*) ; 
 int /*<<< orphan*/  FUNC5 (struct cf_parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cf_parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strref*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (struct cf_parser*,struct strref*,scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct decl_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct cf_parser *cfp, struct decl_info *decl)
{
	struct strref ref;
	int code;
	struct decl_param param = {0};

	/* get storage specifiers */
	code = FUNC3(cfp, &ref, TYPE_OR_STORAGE, ",");
	if (code != PARSE_SUCCESS)
		return code;

	while (FUNC8(cfp, &ref, &param.flags)) {
		code = FUNC3(cfp, &ref, TYPE_OR_STORAGE, ",");
		if (code != PARSE_SUCCESS)
			return code;
	}

	/* parameters not marked with specifiers are input parameters */
	if (param.flags == 0)
		param.flags = CALL_PARAM_IN;

	if (!FUNC7(&ref, &param.type, false)) {
		FUNC0(cfp, "type");
		FUNC1(cfp, ",", ")");
		return PARSE_CONTINUE;
	}

	/* name */
	code = FUNC2(cfp, &param.name, "parameter name", ",");
	if (code != PARSE_SUCCESS)
		return code;

	if (FUNC10(decl, param.name))
		FUNC5(cfp, param.name);

	if (FUNC9(param.name))
		FUNC6(cfp, param.name);

	FUNC4(decl->params, &param);
	return PARSE_SUCCESS;
}