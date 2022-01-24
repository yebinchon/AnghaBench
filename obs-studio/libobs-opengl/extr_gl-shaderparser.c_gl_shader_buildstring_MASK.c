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
struct shader_func {int dummy; } ;
struct gl_shader_parser {int /*<<< orphan*/  gl_string; int /*<<< orphan*/  parser; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct gl_shader_parser*) ; 
 int /*<<< orphan*/  FUNC4 (struct gl_shader_parser*) ; 
 int /*<<< orphan*/  FUNC5 (struct gl_shader_parser*,struct shader_func*) ; 
 int /*<<< orphan*/  FUNC6 (struct gl_shader_parser*) ; 
 int /*<<< orphan*/  FUNC7 (struct gl_shader_parser*,struct shader_func*) ; 
 int /*<<< orphan*/  FUNC8 (struct gl_shader_parser*,struct shader_func*) ; 
 int /*<<< orphan*/  FUNC9 (struct gl_shader_parser*) ; 
 int /*<<< orphan*/  FUNC10 (struct gl_shader_parser*) ; 
 struct shader_func* FUNC11 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static bool FUNC12(struct gl_shader_parser *glsp)
{
	struct shader_func *main_func;

	main_func = FUNC11(&glsp->parser, "main");
	if (!main_func) {
		FUNC0(LOG_ERROR, "function 'main' not found");
		return false;
	}

	FUNC2(&glsp->gl_string, "#version 330\n\n");
	FUNC1(&glsp->gl_string, "const bool obs_glsl_compile = true;\n\n");
	FUNC9(glsp);
	FUNC5(glsp, main_func);
	FUNC8(glsp, main_func);
	FUNC6(glsp);
	FUNC10(glsp);
	FUNC4(glsp);
	FUNC7(glsp, main_func);
	FUNC3(glsp);

	return true;
}