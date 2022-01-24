#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct shader_var {int /*<<< orphan*/  default_val; } ;
struct TYPE_9__ {TYPE_2__* cur_token; } ;
struct shader_parser {TYPE_3__ cfp; } ;
struct TYPE_7__ {int /*<<< orphan*/  array; } ;
struct TYPE_8__ {TYPE_1__ str; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFTOKEN_NUM ; 
 int PARSE_EOF ; 
 int PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,char*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 long FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC7(struct shader_parser *sp,
						 struct shader_var *param,
						 bool is_float)
{
	int code;
	bool is_negative = false;

	if (!FUNC1(&sp->cfp))
		return PARSE_EOF;

	if (FUNC2(&sp->cfp, "-")) {
		is_negative = true;

		if (!FUNC0(&sp->cfp))
			return PARSE_EOF;
	}

	code = FUNC3(&sp->cfp, CFTOKEN_NUM, "numeric value", ";");
	if (code != PARSE_SUCCESS)
		return code;

	if (is_float) {
		float f = (float)FUNC5(sp->cfp.cur_token->str.array);
		if (is_negative)
			f = -f;
		FUNC4(param->default_val, &f, sizeof(float));
	} else {
		long l = FUNC6(sp->cfp.cur_token->str.array, NULL, 10);
		if (is_negative)
			l = -l;
		FUNC4(param->default_val, &l, sizeof(long));
	}

	return PARSE_SUCCESS;
}