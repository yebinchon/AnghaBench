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
struct ep_func {char* ret_type; char* mapping; } ;
struct effect_parser {int dummy; } ;
struct dstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct effect_parser*,struct dstr*,struct dstr*,struct ep_func*) ; 

__attribute__((used)) static void FUNC6(struct effect_parser *ep, struct dstr *shader,
			  struct ep_func *func, struct dstr *call_str)
{
	struct dstr param_str;
	struct dstr adjusted_call;

	FUNC3(&param_str);
	FUNC4(&adjusted_call, call_str);

	FUNC0(shader, "\n");
	FUNC0(shader, func->ret_type);
	FUNC0(shader, " main(");

	FUNC5(ep, shader, &param_str, func);

	FUNC0(shader, ")");
	if (func->mapping) {
		FUNC0(shader, " : ");
		FUNC0(shader, func->mapping);
	}

	FUNC0(shader, "\n{\n\treturn ");
	FUNC1(shader, &adjusted_call);
	FUNC0(shader, "\n}\n");

	FUNC2(&adjusted_call);
	FUNC2(&param_str);
}