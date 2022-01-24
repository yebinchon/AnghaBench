#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct macro_params {int /*<<< orphan*/  params; } ;
struct macro_param {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {char* array; } ;
struct cf_token {scalar_t__ type; TYPE_1__ str; } ;
struct cf_preprocessor {int dummy; } ;
struct TYPE_4__ {size_t num; } ;
struct cf_def {TYPE_2__ params; } ;

/* Variables and functions */
 scalar_t__ CFTOKEN_OTHER ; 
 int /*<<< orphan*/  FUNC0 (struct cf_preprocessor*,struct cf_token*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_preprocessor*,struct cf_token*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cf_def const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct cf_preprocessor*,struct cf_token**,struct macro_param*,struct cf_token const*,struct macro_params const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct macro_param*) ; 
 int /*<<< orphan*/  FUNC6 (struct macro_param*) ; 
 int /*<<< orphan*/  FUNC7 (struct macro_param*) ; 
 int /*<<< orphan*/  FUNC8 (struct cf_token**,int) ; 
 scalar_t__ FUNC9 (struct macro_param*) ; 

__attribute__((used)) static void FUNC10(
	struct cf_preprocessor *pp, struct cf_token **p_cur_token,
	const struct cf_def *def, const struct cf_token *base,
	const struct macro_params *cur_params, struct macro_params *dst)
{
	struct cf_token *cur_token = *p_cur_token;
	size_t count = 0;

	FUNC8(&cur_token, false);
	if (cur_token->type != CFTOKEN_OTHER || *cur_token->str.array != '(') {
		FUNC1(pp, cur_token, "'('");
		goto exit;
	}

	do {
		struct macro_param param;
		FUNC7(&param);
		cur_token++;
		count++;

		FUNC3(pp, &cur_token, &param, base,
					       cur_params);
		if (cur_token->type != CFTOKEN_OTHER ||
		    (*cur_token->str.array != ',' &&
		     *cur_token->str.array != ')')) {

			FUNC6(&param);
			FUNC1(pp, cur_token, "',' or ')'");
			goto exit;
		}

		if (FUNC9(&param)) {
			/* if 0-param macro, ignore first entry */
			if (count == 1 && !def->params.num &&
			    *cur_token->str.array == ')') {
				FUNC6(&param);
				break;
			}
		}

		if (count <= def->params.num) {
			FUNC4(&param.name,
				      FUNC2(def, count - 1));
			FUNC5(dst->params, &param);
		} else {
			FUNC6(&param);
		}
	} while (*cur_token->str.array != ')');

	if (count != def->params.num)
		FUNC0(pp, cur_token,
			    "Mismatching number of macro parameters", NULL,
			    NULL, NULL);

exit:
	*p_cur_token = cur_token;
}