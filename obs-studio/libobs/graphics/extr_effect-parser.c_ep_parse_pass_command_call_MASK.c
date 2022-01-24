#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct cf_token* cur_token; } ;
struct effect_parser {TYPE_1__ cfp; } ;
struct darray {int dummy; } ;
struct cf_token {int dummy; } ;

/* Variables and functions */
 int PARSE_CONTINUE ; 
 int PARSE_EOF ; 
 int PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct cf_token*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct darray*,struct cf_token*) ; 

__attribute__((used)) static inline int FUNC5(struct effect_parser *ep,
					     struct darray *call)
{
	struct cf_token end_token;
	FUNC2(&end_token);

	while (!FUNC3(&ep->cfp, ";")) {
		if (FUNC3(&ep->cfp, "}")) {
			FUNC0(&ep->cfp, ";");
			return PARSE_CONTINUE;
		}

		FUNC4(sizeof(struct cf_token), call,
				 ep->cfp.cur_token);
		if (!FUNC1(&ep->cfp))
			return PARSE_EOF;
	}

	FUNC4(sizeof(struct cf_token), call, ep->cfp.cur_token);
	FUNC4(sizeof(struct cf_token), call, &end_token);
	return PARSE_SUCCESS;
}