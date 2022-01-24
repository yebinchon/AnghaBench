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
struct shader_sampler {int /*<<< orphan*/  name; } ;
struct shader_parser {int /*<<< orphan*/  samplers; int /*<<< orphan*/  cfp; } ;
struct cf_token {int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int PARSE_EOF ; 
 scalar_t__ PARSE_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cf_token*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct shader_sampler*) ; 
 int /*<<< orphan*/  FUNC4 (struct shader_sampler*) ; 
 int /*<<< orphan*/  FUNC5 (struct shader_sampler*) ; 
 int FUNC6 (struct shader_parser*,struct shader_sampler*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC8(struct shader_parser *sp)
{
	struct shader_sampler ss;
	struct cf_token peek;
	FUNC5(&ss);

	if (FUNC0(&sp->cfp, &ss.name, "name", ";") != PARSE_SUCCESS)
		goto error;
	if (FUNC1(&sp->cfp, "{", ";", NULL) != PARSE_SUCCESS)
		goto error;

	if (!FUNC2(&sp->cfp, &peek))
		goto error;

	while (FUNC7(&peek.str, "}") != 0) {
		int ret = FUNC6(sp, &ss);
		if (ret == PARSE_EOF)
			goto error;

		if (!FUNC2(&sp->cfp, &peek))
			goto error;
	}

	if (FUNC1(&sp->cfp, "}", ";", NULL) != PARSE_SUCCESS)
		goto error;
	if (FUNC1(&sp->cfp, ";", NULL, NULL) != PARSE_SUCCESS)
		goto error;

	FUNC3(sp->samplers, &ss);
	return;

error:
	FUNC4(&ss);
}