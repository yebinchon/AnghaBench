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
struct shader_var {char* type; } ;
struct shader_parser {int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEX_ERROR ; 
 int PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct shader_parser*,struct shader_var*,int) ; 

__attribute__((used)) static inline int FUNC3(struct shader_parser *sp,
						    struct shader_var *param)
{
	const char *float_type = param->type + 5;
	int float_count = 0, code, i;

	/* -------------------------------------------- */

	if (float_type[0] < '1' || float_type[0] > '4')
		FUNC0(&sp->cfp, "Invalid row count", LEX_ERROR, NULL,
			    NULL, NULL);

	float_count = float_type[0] - '0';

	if (float_type[1] == 'x') {
		if (float_type[2] < '1' || float_type[2] > '4')
			FUNC0(&sp->cfp, "Invalid column count", LEX_ERROR,
				    NULL, NULL, NULL);

		float_count *= float_type[2] - '0';
	}

	/* -------------------------------------------- */

	code = FUNC1(&sp->cfp, "{", ";", NULL);
	if (code != PARSE_SUCCESS)
		return code;

	for (i = 0; i < float_count; i++) {
		char *next = ((i + 1) < float_count) ? "," : "}";

		code = FUNC2(sp, param, true);
		if (code != PARSE_SUCCESS)
			return code;

		code = FUNC1(&sp->cfp, next, ";", NULL);
		if (code != PARSE_SUCCESS)
			return code;
	}

	return PARSE_SUCCESS;
}