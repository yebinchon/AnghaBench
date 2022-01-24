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
struct cf_token {scalar_t__ type; int /*<<< orphan*/  str; } ;
struct cf_preprocessor {scalar_t__ ignore_state; } ;

/* Variables and functions */
 scalar_t__ CFTOKEN_STRING ; 
 int /*<<< orphan*/  FUNC0 (struct cf_preprocessor*,struct cf_token*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_preprocessor*,struct cf_token*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cf_preprocessor*,struct cf_token*) ; 
 int /*<<< orphan*/  FUNC3 (struct cf_token**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cf_token**,int) ; 

__attribute__((used)) static void FUNC7(struct cf_preprocessor *pp,
				  struct cf_token **p_cur_token)
{
	struct cf_token *cur_token = *p_cur_token;

	if (pp->ignore_state) {
		FUNC3(p_cur_token);
		return;
	}

	FUNC6(&cur_token, true);

	if (cur_token->type != CFTOKEN_STRING) {
		FUNC1(pp, cur_token, "string");
		FUNC3(&cur_token);
		goto exit;
	}

	if (FUNC5(&cur_token->str)) {
		/* TODO */
	} else if (FUNC4(&cur_token->str)) {
		if (!pp->ignore_state)
			FUNC2(pp, cur_token);
	} else {
		FUNC0(pp, cur_token, "Invalid or incomplete string", NULL,
			    NULL, NULL);
		FUNC3(&cur_token);
		goto exit;
	}

	cur_token++;

exit:
	*p_cur_token = cur_token;
}