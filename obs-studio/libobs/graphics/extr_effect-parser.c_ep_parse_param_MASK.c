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
struct ep_param {int dummy; } ;
struct effect_parser {int /*<<< orphan*/  params; int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ep_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct ep_param*) ; 
 int /*<<< orphan*/  FUNC3 (struct ep_param*,char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct effect_parser*,struct ep_param*) ; 
 int /*<<< orphan*/  FUNC5 (struct effect_parser*,struct ep_param*) ; 
 int /*<<< orphan*/  FUNC6 (struct effect_parser*,struct ep_param*) ; 

__attribute__((used)) static void FUNC7(struct effect_parser *ep, char *type, char *name,
			   bool is_property, bool is_const, bool is_uniform)
{
	struct ep_param param;
	FUNC3(&param, type, name, is_property, is_const, is_uniform);

	if (FUNC0(&ep->cfp, ";"))
		goto complete;
	if (FUNC0(&ep->cfp, "[") && !FUNC5(ep, &param))
		goto error;
	if (FUNC0(&ep->cfp, "<") &&
	    !FUNC4(ep, &param))
		goto error;
	if (FUNC0(&ep->cfp, "=") && !FUNC6(ep, &param))
		goto error;
	/*
	if (cf_token_is(&ep->cfp, "<") && !ep_parse_param_property(ep, &param))
		goto error; */
	if (!FUNC0(&ep->cfp, ";"))
		goto error;

complete:
	FUNC1(ep->params, &param);
	return;

error:
	FUNC2(&param);
}