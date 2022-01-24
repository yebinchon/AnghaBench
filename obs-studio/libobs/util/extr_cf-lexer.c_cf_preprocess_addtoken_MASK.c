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
struct macro_params {int dummy; } ;
struct macro_param {int dummy; } ;
struct darray {int dummy; } ;
struct cf_token {scalar_t__ type; int /*<<< orphan*/  str; } ;
struct cf_preprocessor {scalar_t__ ignore_state; } ;
struct cf_def {int dummy; } ;

/* Variables and functions */
 scalar_t__ CFTOKEN_NAME ; 
 struct cf_def* FUNC0 (struct cf_preprocessor*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_preprocessor*,struct darray*,struct cf_token**,struct cf_token const*,struct cf_def*,struct macro_params const*) ; 
 int /*<<< orphan*/  FUNC2 (struct cf_preprocessor*,struct darray*,struct cf_token**,struct cf_token const*,struct macro_param*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct darray*,struct cf_token*) ; 
 struct macro_param* FUNC4 (struct macro_params const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct cf_preprocessor *pp,
				   struct darray *dst, /* struct cf_token */
				   struct cf_token **p_cur_token,
				   const struct cf_token *base,
				   const struct macro_params *params)
{
	struct cf_token *cur_token = *p_cur_token;

	if (pp->ignore_state)
		goto ignore;

	if (!base)
		base = cur_token;

	if (cur_token->type == CFTOKEN_NAME) {
		struct cf_def *def;
		struct macro_param *param;

		param = FUNC4(params, &cur_token->str);
		if (param) {
			FUNC2(pp, dst, &cur_token, base,
						   param);
			goto exit;
		}

		def = FUNC0(pp, &cur_token->str);
		if (def) {
			FUNC1(pp, dst, &cur_token, base,
						    def, params);
			goto exit;
		}
	}

	FUNC3(sizeof(struct cf_token), dst, cur_token);

ignore:
	cur_token++;

exit:
	*p_cur_token = cur_token;
}