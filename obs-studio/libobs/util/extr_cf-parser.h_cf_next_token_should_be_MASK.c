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
struct cf_parser {TYPE_1__* cur_token; } ;
struct TYPE_2__ {int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int PARSE_CONTINUE ; 
 int PARSE_EOF ; 
 int PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct cf_parser*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_parser*) ; 
 int /*<<< orphan*/  FUNC2 (struct cf_parser*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct cf_parser*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static inline int FUNC5(struct cf_parser *p, const char *str,
					  const char *goto1, const char *goto2)
{
	if (!FUNC3(p)) {
		FUNC1(p);
		return PARSE_EOF;
	} else if (FUNC4(&p->cur_token->str, str) == 0) {
		return PARSE_SUCCESS;
	}

	if (goto1) {
		if (!FUNC2(p, goto1, goto2))
			return PARSE_EOF;
	}

	FUNC0(p, str);
	return PARSE_CONTINUE;
}