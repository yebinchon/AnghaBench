#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  cur_token; } ;
struct shader_parser {int /*<<< orphan*/  funcs; TYPE_1__ cfp; } ;
struct shader_func {char* mapping; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (TYPE_1__*,char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char,char) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct shader_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct shader_func*) ; 
 int /*<<< orphan*/  FUNC8 (struct shader_func*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct shader_parser*,struct shader_func*) ; 

__attribute__((used)) static void FUNC10(struct shader_parser *sp, char *type, char *name)
{
	struct shader_func func;

	FUNC8(&func, type, name);
	if (!FUNC9(sp, &func))
		goto error;

	if (!FUNC3(&sp->cfp))
		goto error;

	/* if function is mapped to something, for example COLOR */
	if (FUNC5(&sp->cfp, ":")) {
		char *mapping = NULL;
		int errorcode =
			FUNC1(&sp->cfp, &mapping, "mapping", "{");
		if (errorcode != PARSE_SUCCESS)
			goto error;

		func.mapping = mapping;

		if (!FUNC3(&sp->cfp))
			goto error;
	}

	if (!FUNC5(&sp->cfp, "{")) {
		FUNC0(&sp->cfp, "{");
		goto error;
	}

	func.start = sp->cfp.cur_token;
	if (!FUNC4(&sp->cfp, '{', '}'))
		goto error;

	/* it is established that the current token is '}' if we reach this */
	FUNC2(&sp->cfp);

	func.end = sp->cfp.cur_token;
	FUNC6(sp->funcs, &func);
	return;

error:
	FUNC7(&func);
}