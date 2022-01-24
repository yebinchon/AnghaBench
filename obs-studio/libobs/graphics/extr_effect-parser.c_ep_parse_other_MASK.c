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
struct effect_parser {int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 scalar_t__ PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char**,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct effect_parser*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct effect_parser*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct effect_parser*,char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct effect_parser*,char*,int) ; 

__attribute__((used)) static void FUNC9(struct effect_parser *ep)
{
	bool is_property = false, is_const = false, is_uniform = false;
	char *type = NULL, *name = NULL;

	if (!FUNC5(ep, &is_property, &is_const, &is_uniform))
		goto error;

	if (FUNC1(&ep->cfp, &type, "type", ";") != PARSE_SUCCESS)
		goto error;
	if (FUNC2(&ep->cfp, &name, "name", ";") != PARSE_SUCCESS)
		goto error;
	if (!FUNC3(&ep->cfp))
		goto error;

	if (FUNC4(&ep->cfp, "(")) {
		FUNC8(ep, "property", is_property);
		FUNC8(ep, "const", is_const);
		FUNC8(ep, "uniform", is_uniform);

		FUNC6(ep, type, name);
		return;
	} else {
		FUNC7(ep, type, name, is_property, is_const,
			       is_uniform);
		return;
	}

error:
	FUNC0(type);
	FUNC0(name);
}