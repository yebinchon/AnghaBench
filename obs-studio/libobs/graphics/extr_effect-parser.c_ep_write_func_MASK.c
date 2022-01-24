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
struct ep_var {int dummy; } ;
struct TYPE_2__ {size_t num; struct ep_var* array; } ;
struct ep_func {int written; char* ret_type; char* name; int /*<<< orphan*/  contents; TYPE_1__ param_vars; } ;
struct effect_parser {int dummy; } ;
struct dstr {int dummy; } ;
struct darray {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct effect_parser*,struct dstr*,struct ep_func*,struct darray*) ; 
 int /*<<< orphan*/  FUNC3 (struct effect_parser*,struct dstr*,struct ep_func*,struct darray*) ; 
 int /*<<< orphan*/  FUNC4 (struct effect_parser*,struct dstr*,struct ep_func*) ; 
 int /*<<< orphan*/  FUNC5 (struct effect_parser*,struct dstr*,struct ep_func*) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*,struct ep_var*) ; 

__attribute__((used)) static void FUNC7(struct effect_parser *ep, struct dstr *shader,
			  struct ep_func *func, struct darray *used_params)
{
	size_t i;

	func->written = true;

	FUNC3(ep, shader, func, used_params);
	FUNC4(ep, shader, func);
	FUNC5(ep, shader, func);
	FUNC2(ep, shader, func, used_params);

	/* ------------------------------------ */

	FUNC0(shader, func->ret_type);
	FUNC0(shader, " ");
	FUNC0(shader, func->name);
	FUNC0(shader, "(");

	for (i = 0; i < func->param_vars.num; i++) {
		struct ep_var *var = func->param_vars.array + i;

		if (i)
			FUNC0(shader, ", ");
		FUNC6(shader, var);
	}

	FUNC0(shader, ")\n");
	FUNC1(shader, &func->contents);
	FUNC0(shader, "\n");
}