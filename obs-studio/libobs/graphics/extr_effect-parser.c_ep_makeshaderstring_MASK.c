#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ep_param {int dummy; } ;
struct ep_func {int dummy; } ;
struct effect_parser {int dummy; } ;
struct dstr {int dummy; } ;
struct darray {struct cf_token* array; } ;
struct TYPE_5__ {int /*<<< orphan*/ * array; } ;
struct cf_token {scalar_t__ type; TYPE_1__ str; } ;

/* Variables and functions */
 scalar_t__ CFTOKEN_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct dstr*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 struct ep_func* FUNC3 (struct effect_parser*,TYPE_1__*) ; 
 struct ep_param* FUNC4 (struct effect_parser*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct effect_parser*) ; 
 int /*<<< orphan*/  FUNC6 (struct effect_parser*,struct dstr*,struct ep_func*,struct darray*) ; 
 int /*<<< orphan*/  FUNC7 (struct effect_parser*,struct dstr*,struct ep_func*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC8 (struct dstr*,struct ep_param*,struct darray*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC11(struct effect_parser *ep, struct dstr *shader,
				struct darray *shader_call,
				struct darray *used_params)
{
	struct cf_token *token = shader_call->array;
	struct cf_token *func_name;
	struct ep_func *func;
	struct dstr call_str;

	FUNC2(&call_str);

	if (!token)
		return;

	while (token->type != CFTOKEN_NONE && FUNC9(*token->str.array))
		token++;

	if (token->type == CFTOKEN_NONE || FUNC10(&token->str, "NULL") == 0)
		return;

	func_name = token;

	while (token->type != CFTOKEN_NONE) {
		struct ep_param *param = FUNC4(ep, &token->str);
		if (param)
			FUNC8(shader, param, used_params);

		FUNC0(&call_str, &token->str);
		token++;
	}

	func = FUNC3(ep, &func_name->str);
	if (!func)
		return;

	FUNC6(ep, shader, func, used_params);
	FUNC7(ep, shader, func, &call_str);

	FUNC1(&call_str);

	FUNC5(ep);
}