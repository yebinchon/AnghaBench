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
struct shader_var {int dummy; } ;
struct TYPE_2__ {size_t num; struct shader_var* array; } ;
struct shader_func {char* name; struct cf_token* start; TYPE_1__ params; int /*<<< orphan*/  return_type; } ;
struct gl_shader_parser {int /*<<< orphan*/  gl_string; } ;
struct cf_token {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_shader_parser*,struct cf_token**,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gl_shader_parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gl_shader_parser*,struct shader_var*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(struct gl_shader_parser *glsp,
			      struct shader_func *func)
{
	size_t i;
	struct cf_token *token;

	FUNC2(glsp, func->return_type);
	FUNC0(&glsp->gl_string, " ");

	if (FUNC4(func->name, "main") == 0)
		FUNC0(&glsp->gl_string, "_main_wrap");
	else
		FUNC0(&glsp->gl_string, func->name);

	FUNC0(&glsp->gl_string, "(");

	for (i = 0; i < func->params.num; i++) {
		struct shader_var *param = func->params.array + i;

		if (i > 0)
			FUNC0(&glsp->gl_string, ", ");
		FUNC3(glsp, param);
	}

	FUNC0(&glsp->gl_string, ")\n");

	token = func->start;
	FUNC1(glsp, &token, "}");
	FUNC0(&glsp->gl_string, "}\n\n");
}