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
struct shader_var {int /*<<< orphan*/  type; } ;
struct gl_shader_parser {int /*<<< orphan*/  gl_string; } ;
struct cf_token {int /*<<< orphan*/  str; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct gl_shader_parser*,struct cf_token**) ; 
 int FUNC3 (struct gl_shader_parser*,struct cf_token**) ; 
 int FUNC4 (struct gl_shader_parser*,struct cf_token**,struct shader_var*) ; 
 struct shader_var* FUNC5 (struct gl_shader_parser*,struct cf_token*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static bool FUNC7(struct gl_shader_parser *glsp,
			       struct cf_token **p_token)
{
	struct cf_token *token = *p_token;
	bool written = true;

	if (FUNC6(&token->str, "atan2") == 0) {
		FUNC1(&glsp->gl_string, "atan2");
	} else if (FUNC6(&token->str, "ddx") == 0) {
		FUNC1(&glsp->gl_string, "dFdx");
	} else if (FUNC6(&token->str, "ddy") == 0) {
		FUNC1(&glsp->gl_string, "dFdy");
	} else if (FUNC6(&token->str, "frac") == 0) {
		FUNC1(&glsp->gl_string, "fract");
	} else if (FUNC6(&token->str, "lerp") == 0) {
		FUNC1(&glsp->gl_string, "mix");
	} else if (FUNC6(&token->str, "fmod") == 0) {
		FUNC1(&glsp->gl_string, "mod");
	} else if (FUNC6(&token->str, "rsqrt") == 0) {
		FUNC1(&glsp->gl_string, "inversesqrt");
	} else if (FUNC6(&token->str, "saturate") == 0) {
		written = FUNC3(glsp, &token);
	} else if (FUNC6(&token->str, "mul") == 0) {
		written = FUNC2(glsp, &token);
	} else {
		struct shader_var *var = FUNC5(glsp, token);
		if (var && FUNC0(var->type, "texture", 7) == 0)
			written = FUNC4(glsp, &token, var);
		else
			written = false;
	}

	if (written)
		*p_token = token;
	return written;
}