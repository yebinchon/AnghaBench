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
struct shader_sampler {int /*<<< orphan*/  values; int /*<<< orphan*/  states; } ;
struct shader_parser {int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 int PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char**,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static int FUNC5(struct shader_parser *sp,
				       struct shader_sampler *ss)
{
	int ret;
	char *state = NULL, *value = NULL;

	ret = FUNC1(&sp->cfp, &state, "state name", ";");
	if (ret != PARSE_SUCCESS)
		goto fail;

	ret = FUNC3(&sp->cfp, "=", ";", NULL);
	if (ret != PARSE_SUCCESS)
		goto fail;

	ret = FUNC2(&sp->cfp, &value);
	if (ret != PARSE_SUCCESS)
		goto fail;

	ret = FUNC3(&sp->cfp, ";", ";", NULL);
	if (ret != PARSE_SUCCESS)
		goto fail;

	FUNC4(ss->states, &state);
	FUNC4(ss->values, &value);
	return ret;

fail:
	FUNC0(state);
	FUNC0(value);
	return ret;
}