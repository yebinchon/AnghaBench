#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ep_sampler {int /*<<< orphan*/  values; int /*<<< orphan*/  states; } ;
struct TYPE_8__ {TYPE_2__* cur_token; } ;
struct effect_parser {TYPE_3__ cfp; } ;
struct dstr {char* array; scalar_t__ len; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {char* array; int /*<<< orphan*/  len; } ;
struct TYPE_7__ {TYPE_1__ str; } ;

/* Variables and functions */
 int PARSE_EOF ; 
 int PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (TYPE_3__*,char**,char*,char*) ; 
 int FUNC2 (TYPE_3__*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct effect_parser *ep,
				       struct ep_sampler *eps)
{
	int ret;
	char *state = NULL;
	struct dstr value = {0};

	ret = FUNC1(&ep->cfp, &state, "state name", ";");
	if (ret != PARSE_SUCCESS)
		goto fail;

	ret = FUNC2(&ep->cfp, "=", ";", NULL);
	if (ret != PARSE_SUCCESS)
		goto fail;

	for (;;) {
		const char *cur_str;

		if (!FUNC3(&ep->cfp))
			return PARSE_EOF;

		cur_str = ep->cfp.cur_token->str.array;
		if (*cur_str == ';')
			break;

		FUNC6(&value, cur_str, ep->cfp.cur_token->str.len);
	}

	if (value.len) {
		FUNC4(eps->states, &state);
		FUNC4(eps->values, &value.array);
	}

	return ret;

fail:
	FUNC0(state);
	FUNC5(&value);
	return ret;
}