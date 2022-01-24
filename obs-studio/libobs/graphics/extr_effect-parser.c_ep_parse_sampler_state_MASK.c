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
struct ep_sampler {int /*<<< orphan*/  name; } ;
struct effect_parser {int /*<<< orphan*/  samplers; int /*<<< orphan*/  cfp; } ;
struct cf_token {int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int PARSE_EOF ; 
 scalar_t__ PARSE_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cf_token*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ep_sampler*) ; 
 int FUNC4 (struct effect_parser*,struct ep_sampler*) ; 
 int /*<<< orphan*/  FUNC5 (struct ep_sampler*) ; 
 int /*<<< orphan*/  FUNC6 (struct ep_sampler*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC8(struct effect_parser *ep)
{
	struct ep_sampler eps;
	struct cf_token peek;
	FUNC6(&eps);

	if (FUNC0(&ep->cfp, &eps.name, "name", ";") != PARSE_SUCCESS)
		goto error;
	if (FUNC1(&ep->cfp, "{", ";", NULL) != PARSE_SUCCESS)
		goto error;

	if (!FUNC2(&ep->cfp, &peek))
		goto error;

	while (FUNC7(&peek.str, "}") != 0) {
		int ret = FUNC4(ep, &eps);
		if (ret == PARSE_EOF)
			goto error;

		if (!FUNC2(&ep->cfp, &peek))
			goto error;
	}

	if (FUNC1(&ep->cfp, "}", ";", NULL) != PARSE_SUCCESS)
		goto error;
	if (FUNC1(&ep->cfp, ";", NULL, NULL) != PARSE_SUCCESS)
		goto error;

	FUNC3(ep->samplers, &eps);
	return;

error:
	FUNC5(&eps);
}