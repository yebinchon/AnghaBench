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
struct effect_parser {int /*<<< orphan*/  cfp; } ;
struct darray {int dummy; } ;

/* Variables and functions */
#define  PARSE_BREAK 132 
#define  PARSE_CONTINUE 131 
#define  PARSE_EOF 130 
#define  PARSE_UNEXPECTED_BREAK 129 
#define  PARSE_UNEXPECTED_CONTINUE 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct darray*,struct ep_param*) ; 
 int /*<<< orphan*/  FUNC6 (struct ep_param*) ; 
 int /*<<< orphan*/  FUNC7 (struct ep_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC8 (struct effect_parser*,struct ep_param*) ; 

__attribute__((used)) static int FUNC9(struct effect_parser *ep,
				struct darray *annotations)
{
	if (!FUNC4(&ep->cfp, "<")) {
		FUNC1(&ep->cfp, "<");
		goto error;
	}

	/* get annotation variables */
	while (true) {
		bool do_break = false;
		struct ep_param var;

		FUNC7(&var, FUNC0(""), FUNC0(""), false, false,
			      false);

		switch (FUNC8(ep, &var)) {
		case PARSE_UNEXPECTED_CONTINUE:
			FUNC2(&ep->cfp);
			/* Falls through. */
		case PARSE_CONTINUE:
			FUNC6(&var);
			continue;

		case PARSE_UNEXPECTED_BREAK:
			FUNC2(&ep->cfp);
			/* Falls through. */
		case PARSE_BREAK:
			FUNC6(&var);
			do_break = true;
			break;

		case PARSE_EOF:
			FUNC6(&var);
			goto error;
		}

		if (do_break)
			break;

		FUNC5(sizeof(struct ep_param), annotations, &var);
	}

	if (!FUNC4(&ep->cfp, ">")) {
		FUNC1(&ep->cfp, ">");
		goto error;
	}
	if (!FUNC3(&ep->cfp))
		goto error;

	return true;

error:
	return false;
}