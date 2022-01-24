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
struct cf_parser {struct cf_token* cur_token; } ;
struct TYPE_2__ {struct cf_parser cfp; } ;
struct gl_shader_parser {int /*<<< orphan*/  gl_string; TYPE_1__ parser; } ;
struct cf_token {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cf_parser*) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_parser*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct gl_shader_parser*,struct cf_token**,char*) ; 

__attribute__((used)) static bool FUNC4(struct gl_shader_parser *glsp,
			 struct cf_token **p_token)
{
	struct cf_parser *cfp = &glsp->parser.cfp;
	cfp->cur_token = *p_token;

	if (!FUNC0(cfp))
		return false;
	if (!FUNC1(cfp, "("))
		return false;

	FUNC2(&glsp->gl_string, "(");
	FUNC3(glsp, &cfp->cur_token, ",");
	FUNC2(&glsp->gl_string, ") * (");
	FUNC0(cfp);
	FUNC3(glsp, &cfp->cur_token, ")");
	FUNC2(&glsp->gl_string, "))");

	*p_token = cfp->cur_token;
	return true;
}