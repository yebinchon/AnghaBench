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
struct shader_var {size_t gl_sampler_id; char* name; } ;
struct cf_parser {int /*<<< orphan*/  cur_token; } ;
struct TYPE_2__ {struct cf_parser cfp; } ;
struct gl_shader_parser {int /*<<< orphan*/  gl_string; TYPE_1__ parser; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cf_parser*) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_parser*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 size_t FUNC3 (struct gl_shader_parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC4(struct gl_shader_parser *glsp,
					 struct shader_var *var,
					 const char *call, bool sampler)
{
	struct cf_parser *cfp = &glsp->parser.cfp;

	if (!FUNC0(cfp))
		return false;
	if (!FUNC1(cfp, "("))
		return false;

	if (sampler) {
		if (!FUNC0(cfp))
			return false;
		const size_t sampler_id = FUNC3(glsp, cfp->cur_token);
		if (sampler_id == (size_t)-1)
			return false;
		if (!FUNC0(cfp))
			return false;
		if (!FUNC1(cfp, ","))
			return false;

		var->gl_sampler_id = sampler_id;
	}

	FUNC2(&glsp->gl_string, call);
	FUNC2(&glsp->gl_string, "(");
	FUNC2(&glsp->gl_string, var->name);
	FUNC2(&glsp->gl_string, ", ");
	return true;
}