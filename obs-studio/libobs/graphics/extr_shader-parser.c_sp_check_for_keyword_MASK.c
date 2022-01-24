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
struct shader_parser {int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEX_WARNING ; 
 int PARSE_CONTINUE ; 
 int PARSE_EOF ; 
 int PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static inline int FUNC3(struct shader_parser *sp,
				       const char *keyword, bool *val)
{
	bool new_val = FUNC2(&sp->cfp, keyword);
	if (new_val) {
		if (!FUNC1(&sp->cfp))
			return PARSE_EOF;

		if (new_val && *val)
			FUNC0(&sp->cfp, "'$1' keyword already specified",
				    LEX_WARNING, keyword, NULL, NULL);
		*val = new_val;

		return PARSE_CONTINUE;
	}

	return PARSE_SUCCESS;
}