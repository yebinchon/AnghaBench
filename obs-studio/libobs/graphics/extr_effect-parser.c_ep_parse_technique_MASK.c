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
struct ep_technique {int /*<<< orphan*/  passes; int /*<<< orphan*/  name; } ;
struct ep_pass {int /*<<< orphan*/  passes; int /*<<< orphan*/  name; } ;
struct effect_parser {int /*<<< orphan*/  cfp; int /*<<< orphan*/  techniques; } ;

/* Variables and functions */
#define  PARSE_EOF 129 
 scalar_t__ PARSE_SUCCESS ; 
#define  PARSE_UNEXPECTED_CONTINUE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ep_technique*) ; 
 int FUNC7 (struct effect_parser*,struct ep_technique*) ; 
 int /*<<< orphan*/  FUNC8 (struct ep_technique*) ; 
 int /*<<< orphan*/  FUNC9 (struct ep_technique*) ; 
 int /*<<< orphan*/  FUNC10 (struct ep_technique*) ; 
 int /*<<< orphan*/  FUNC11 (struct ep_technique*) ; 

__attribute__((used)) static void FUNC12(struct effect_parser *ep)
{
	struct ep_technique ept;
	FUNC11(&ept);

	if (FUNC2(&ep->cfp, &ept.name, "name", ";") != PARSE_SUCCESS)
		goto error;

	if (!FUNC4(&ep->cfp))
		return;

	if (!FUNC5(&ep->cfp, "{")) {
		if (!FUNC1(&ep->cfp, ";", NULL)) {
			FUNC0(&ep->cfp, ";");
			return;
		}

		FUNC0(&ep->cfp, "{");
		goto error;
	}
	if (!FUNC4(&ep->cfp))
		goto error;

	while (!FUNC5(&ep->cfp, "}")) {
		struct ep_pass pass;
		FUNC9(&pass);

		switch (FUNC7(ep, &pass)) {
		case PARSE_UNEXPECTED_CONTINUE:
			FUNC8(&pass);
			if (!FUNC1(&ep->cfp, "}", NULL))
				goto error;
			continue;
		case PARSE_EOF:
			FUNC8(&pass);
			goto error;
		}

		FUNC6(ept.passes, &pass);

		if (!FUNC4(&ep->cfp))
			goto error;
	}

	/* pass the current token (which is '}') if we reached here */
	FUNC3(&ep->cfp);

	FUNC6(ep->techniques, &ept);
	return;

error:
	FUNC3(&ep->cfp);
	FUNC10(&ept);
}