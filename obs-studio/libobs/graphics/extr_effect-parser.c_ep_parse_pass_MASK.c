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
struct ep_pass {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_2__* cur_token; } ;
struct effect_parser {TYPE_3__ cfp; } ;
struct cf_token {int /*<<< orphan*/  str; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  array; } ;
struct TYPE_8__ {TYPE_1__ str; } ;

/* Variables and functions */
 int PARSE_CONTINUE ; 
 int PARSE_EOF ; 
 int PARSE_SUCCESS ; 
 int PARSE_UNEXPECTED_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct cf_token*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int FUNC5 (struct effect_parser*,struct ep_pass*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7(struct effect_parser *ep, struct ep_pass *pass)
{
	struct cf_token peek;

	if (!FUNC4(&ep->cfp, "pass"))
		return PARSE_UNEXPECTED_CONTINUE;

	if (!FUNC2(&ep->cfp))
		return PARSE_EOF;

	if (!FUNC4(&ep->cfp, "{")) {
		pass->name = FUNC0(ep->cfp.cur_token->str.array,
				       ep->cfp.cur_token->str.len);
		if (!FUNC2(&ep->cfp))
			return PARSE_EOF;
	}

	if (!FUNC3(&ep->cfp, &peek))
		return PARSE_EOF;

	while (FUNC6(&peek.str, "}") != 0) {
		int ret = FUNC5(ep, pass);
		if (ret < 0 && ret != PARSE_CONTINUE)
			return ret;

		if (!FUNC3(&ep->cfp, &peek))
			return PARSE_EOF;
	}

	/* token is '}' */
	FUNC1(&ep->cfp);

	return PARSE_SUCCESS;
}