#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ep_param {int /*<<< orphan*/  default_val; } ;
struct TYPE_7__ {TYPE_2__* cur_token; } ;
struct effect_parser {TYPE_3__ cfp; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  array; } ;
struct TYPE_6__ {TYPE_1__ str; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFTOKEN_STRING ; 
 int PARSE_EOF ; 
 int PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static inline int FUNC6(struct effect_parser *ep,
					       struct ep_param *param)
{
	int code;
	char *str = NULL;

	if (!FUNC2(&ep->cfp))
		return PARSE_EOF;

	code = FUNC3(&ep->cfp, CFTOKEN_STRING, "string", ";");
	if (code != PARSE_SUCCESS)
		return code;

	str = FUNC1(ep->cfp.cur_token->str.array,
				ep->cfp.cur_token->str.len);

	if (str) {
		FUNC4(param->default_val, str, FUNC5(str) + 1);
		FUNC0(str);
	}

	return PARSE_SUCCESS;
}