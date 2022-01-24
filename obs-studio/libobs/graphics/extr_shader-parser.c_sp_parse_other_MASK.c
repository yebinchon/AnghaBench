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
struct shader_parser {int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 scalar_t__ PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char**,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct shader_parser*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct shader_parser*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct shader_parser*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct shader_parser*,char*,char*,int,int) ; 

__attribute__((used)) static void FUNC9(struct shader_parser *sp)
{
	bool is_const = false, is_uniform = false;
	char *type = NULL, *name = NULL;

	if (!FUNC6(sp, &is_const, &is_uniform))
		goto error;

	if (FUNC1(&sp->cfp, &type, "type", ";") != PARSE_SUCCESS)
		goto error;
	if (FUNC2(&sp->cfp, &name, "name", ";") != PARSE_SUCCESS)
		goto error;

	if (!FUNC3(&sp->cfp))
		goto error;

	if (FUNC4(&sp->cfp, "(")) {
		FUNC5(sp, "const", is_const);
		FUNC5(sp, "uniform", is_uniform);

		FUNC7(sp, type, name);
		return;
	} else {
		FUNC8(sp, type, name, is_const, is_uniform);
		return;
	}

error:
	FUNC0(type);
	FUNC0(name);
}