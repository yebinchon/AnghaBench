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
struct cf_parser {struct cf_token* cur_token; } ;
struct TYPE_2__ {struct cf_parser cfp; } ;
struct gl_shader_parser {int /*<<< orphan*/  gl_string; TYPE_1__ parser; } ;
struct cf_token {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cf_parser*) ; 
 scalar_t__ FUNC1 (struct cf_parser*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct gl_shader_parser*,struct cf_token**,char*) ; 
 int FUNC4 (struct gl_shader_parser*,struct shader_var*,char*,int) ; 

__attribute__((used)) static bool FUNC5(struct gl_shader_parser *glsp,
				  struct cf_token **p_token,
				  struct shader_var *var)
{
	struct cf_parser *cfp = &glsp->parser.cfp;
	bool written = false;
	cfp->cur_token = *p_token;

	if (!FUNC0(cfp))
		return false;
	if (!FUNC1(cfp, "."))
		return false;
	if (!FUNC0(cfp))
		return false;

	const char *function_end = ")";

	if (FUNC1(cfp, "Sample"))
		written = FUNC4(glsp, var, "texture", true);
	else if (FUNC1(cfp, "SampleBias"))
		written = FUNC4(glsp, var, "texture", true);
	else if (FUNC1(cfp, "SampleGrad"))
		written = FUNC4(glsp, var, "textureGrad", true);
	else if (FUNC1(cfp, "SampleLevel"))
		written = FUNC4(glsp, var, "textureLod", true);
	else if (FUNC1(cfp, "Load")) {
		written = FUNC4(glsp, var, "texelFetch", false);
		FUNC2(&glsp->gl_string, "(");
		function_end = ").xy, 0)";
	}

	if (!written)
		return false;

	if (!FUNC0(cfp))
		return false;

	FUNC3(glsp, &cfp->cur_token, ")");
	FUNC2(&glsp->gl_string, function_end);

	*p_token = cfp->cur_token;
	return true;
}