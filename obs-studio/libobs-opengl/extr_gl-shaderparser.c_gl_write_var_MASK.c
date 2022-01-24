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
struct shader_var {scalar_t__ var_type; char* name; int /*<<< orphan*/  type; } ;
struct gl_shader_parser {int /*<<< orphan*/  gl_string; } ;

/* Variables and functions */
 scalar_t__ SHADER_VAR_CONST ; 
 scalar_t__ SHADER_VAR_INOUT ; 
 scalar_t__ SHADER_VAR_OUT ; 
 scalar_t__ SHADER_VAR_UNIFORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_shader_parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gl_shader_parser *glsp, struct shader_var *var)
{
	if (var->var_type == SHADER_VAR_UNIFORM)
		FUNC0(&glsp->gl_string, "uniform ");
	else if (var->var_type == SHADER_VAR_CONST)
		FUNC0(&glsp->gl_string, "const ");
	else if (var->var_type == SHADER_VAR_INOUT)
		FUNC0(&glsp->gl_string, "inout ");
	else if (var->var_type == SHADER_VAR_OUT)
		FUNC0(&glsp->gl_string, "out ");

	FUNC1(glsp, var->type);
	FUNC0(&glsp->gl_string, " ");
	FUNC0(&glsp->gl_string, var->name);
}