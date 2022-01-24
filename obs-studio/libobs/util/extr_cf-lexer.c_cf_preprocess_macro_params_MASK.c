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
struct TYPE_2__ {char* array; } ;
struct cf_token {scalar_t__ type; TYPE_1__ str; } ;
struct cf_preprocessor {int dummy; } ;
struct cf_def {int macro; } ;

/* Variables and functions */
 scalar_t__ CFTOKEN_NAME ; 
 scalar_t__ CFTOKEN_OTHER ; 
 int /*<<< orphan*/  FUNC0 (struct cf_preprocessor*,struct cf_token*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_def*,struct cf_token*) ; 
 int /*<<< orphan*/  FUNC2 (struct cf_token**) ; 
 int /*<<< orphan*/  FUNC3 (struct cf_token**,int) ; 

__attribute__((used)) static bool FUNC4(struct cf_preprocessor *pp,
				       struct cf_def *def,
				       struct cf_token **p_cur_token)
{
	struct cf_token *cur_token = *p_cur_token;
	bool success = false;
	def->macro = true;

	do {
		FUNC3(&cur_token, true);
		if (cur_token->type != CFTOKEN_NAME) {
			FUNC0(pp, cur_token, "identifier");
			FUNC2(&cur_token);
			goto exit;
		}

		FUNC1(def, cur_token);

		FUNC3(&cur_token, true);
		if (cur_token->type != CFTOKEN_OTHER ||
		    (*cur_token->str.array != ',' &&
		     *cur_token->str.array != ')')) {

			FUNC0(pp, cur_token, "',' or ')'");
			FUNC2(&cur_token);
			goto exit;
		}
	} while (*cur_token->str.array != ')');

	/* ended properly, now go to first define token (or newline) */
	FUNC3(&cur_token, true);
	success = true;

exit:
	*p_cur_token = cur_token;
	return success;
}