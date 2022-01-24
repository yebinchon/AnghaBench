#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct darray {int dummy; } ;
struct TYPE_4__ {struct darray da; } ;
struct TYPE_3__ {struct darray da; } ;
struct ep_pass {TYPE_2__ fragment_program; TYPE_1__ vertex_program; } ;
struct effect_parser {int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEX_WARNING ; 
 int PARSE_CONTINUE ; 
 int PARSE_EOF ; 
 scalar_t__ PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (struct effect_parser*,struct darray*) ; 

__attribute__((used)) static int FUNC7(struct effect_parser *ep, struct ep_pass *pass)
{
	struct darray *call; /* struct cf_token */

	if (!FUNC4(&ep->cfp))
		return PARSE_EOF;

	if (FUNC5(&ep->cfp, "vertex_shader") ||
	    FUNC5(&ep->cfp, "vertex_program")) {
		call = &pass->vertex_program.da;

	} else if (FUNC5(&ep->cfp, "pixel_shader") ||
		   FUNC5(&ep->cfp, "pixel_program")) {
		call = &pass->fragment_program.da;

	} else {
		FUNC1(&ep->cfp);
		if (!FUNC2(&ep->cfp, ";", "}"))
			return PARSE_EOF;
		return PARSE_CONTINUE;
	}

	if (FUNC3(&ep->cfp, "=", ";", "}") != PARSE_SUCCESS)
		return PARSE_CONTINUE;

	if (!FUNC4(&ep->cfp))
		return PARSE_EOF;
	if (FUNC5(&ep->cfp, "compile")) {
		FUNC0(&ep->cfp, "compile keyword not necessary",
			    LEX_WARNING, NULL, NULL, NULL);
		if (!FUNC4(&ep->cfp))
			return PARSE_EOF;
	}

	return FUNC6(ep, call);
}