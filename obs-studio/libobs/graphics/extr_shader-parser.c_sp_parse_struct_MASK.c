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
struct shader_var {int /*<<< orphan*/  vars; int /*<<< orphan*/  name; } ;
struct shader_struct {int /*<<< orphan*/  vars; int /*<<< orphan*/  name; } ;
struct shader_parser {int /*<<< orphan*/  structs; int /*<<< orphan*/  cfp; } ;

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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct shader_var*) ; 
 int /*<<< orphan*/  FUNC4 (struct shader_var*) ; 
 int /*<<< orphan*/  FUNC5 (struct shader_var*) ; 
 int /*<<< orphan*/  FUNC6 (struct shader_var*) ; 
 int /*<<< orphan*/  FUNC7 (struct shader_var*) ; 
 int FUNC8 (struct shader_parser*,struct shader_var*) ; 

__attribute__((used)) static void FUNC9(struct shader_parser *sp)
{
	struct shader_struct ss;
	FUNC5(&ss);

	if (FUNC1(&sp->cfp, &ss.name, "name", ";") != PARSE_SUCCESS)
		goto error;
	if (FUNC2(&sp->cfp, "{", ";", NULL) != PARSE_SUCCESS)
		goto error;

	/* get structure variables */
	while (true) {
		bool do_break = false;
		struct shader_var var;

		FUNC7(&var);

		switch (FUNC8(sp, &var)) {

		case PARSE_UNEXPECTED_CONTINUE:
			FUNC0(&sp->cfp);
			/* Falls through. */
		case PARSE_CONTINUE:
			FUNC6(&var);
			continue;

		case PARSE_UNEXPECTED_BREAK:
			FUNC0(&sp->cfp);
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

		FUNC3(ss.vars, &var);
	}

	if (FUNC2(&sp->cfp, ";", NULL, NULL) != PARSE_SUCCESS)
		goto error;

	FUNC3(sp->structs, &ss);
	return;

error:
	FUNC4(&ss);
}