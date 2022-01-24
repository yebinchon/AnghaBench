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
struct ep_var {int /*<<< orphan*/  vars; int /*<<< orphan*/  name; } ;
struct ep_struct {int /*<<< orphan*/  vars; int /*<<< orphan*/  name; } ;
struct effect_parser {int /*<<< orphan*/  structs; int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
#define  PARSE_BREAK 132 
#define  PARSE_CONTINUE 131 
#define  PARSE_EOF 130 
 scalar_t__ PARSE_SUCCESS ; 
#define  PARSE_UNEXPECTED_BREAK 129 
#define  PARSE_UNEXPECTED_CONTINUE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ep_var*) ; 
 int FUNC4 (struct effect_parser*,struct ep_var*) ; 
 int /*<<< orphan*/  FUNC5 (struct ep_var*) ; 
 int /*<<< orphan*/  FUNC6 (struct ep_var*) ; 
 int /*<<< orphan*/  FUNC7 (struct ep_var*) ; 
 int /*<<< orphan*/  FUNC8 (struct ep_var*) ; 

__attribute__((used)) static void FUNC9(struct effect_parser *ep)
{
	struct ep_struct eps;
	FUNC6(&eps);

	if (FUNC1(&ep->cfp, &eps.name, "name", ";") != PARSE_SUCCESS)
		goto error;
	if (FUNC2(&ep->cfp, "{", ";", NULL) != PARSE_SUCCESS)
		goto error;

	/* get structure variables */
	while (true) {
		bool do_break = false;
		struct ep_var var;

		FUNC8(&var);

		switch (FUNC4(ep, &var)) {

		case PARSE_UNEXPECTED_CONTINUE:
			FUNC0(&ep->cfp);
			/* Falls through. */
		case PARSE_CONTINUE:
			FUNC7(&var);
			continue;

		case PARSE_UNEXPECTED_BREAK:
			FUNC0(&ep->cfp);
			/* Falls through. */
		case PARSE_BREAK:
			FUNC7(&var);
			do_break = true;
			break;

		case PARSE_EOF:
			FUNC7(&var);
			goto error;
		}

		if (do_break)
			break;

		FUNC3(eps.vars, &var);
	}

	if (FUNC2(&ep->cfp, ";", NULL, NULL) != PARSE_SUCCESS)
		goto error;

	FUNC3(ep->structs, &eps);
	return;

error:
	FUNC5(&eps);
}