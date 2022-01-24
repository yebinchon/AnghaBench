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
struct ep_var {char* mapping; char* type; char* name; } ;
struct ep_struct {int dummy; } ;
struct TYPE_2__ {size_t num; struct ep_var* array; } ;
struct ep_func {TYPE_1__ param_vars; } ;
struct effect_parser {int dummy; } ;
struct dstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*) ; 
 int FUNC1 (struct dstr*) ; 
 struct ep_struct* FUNC2 (struct effect_parser*,char*) ; 
 int FUNC3 (struct ep_struct*) ; 

__attribute__((used)) static void FUNC4(struct effect_parser *ep, struct dstr *shader,
				 struct dstr *param_str, struct ep_func *func)
{
	size_t i;
	bool empty_params = FUNC1(param_str);

	for (i = 0; i < func->param_vars.num; i++) {
		struct ep_var *var = func->param_vars.array + i;
		struct ep_struct *st = NULL;
		bool mapped = (var->mapping != NULL);

		if (!mapped) {
			st = FUNC2(ep, var->type);
			if (st)
				mapped = FUNC3(st);
		}

		if (mapped) {
			FUNC0(shader, var->type);
			FUNC0(shader, " ");
			FUNC0(shader, var->name);

			if (!st) {
				FUNC0(shader, " : ");
				FUNC0(shader, var->mapping);
			}

			if (!FUNC1(param_str))
				FUNC0(param_str, ", ");
			FUNC0(param_str, var->name);
		}
	}

	if (!empty_params)
		FUNC0(param_str, ", ");
}