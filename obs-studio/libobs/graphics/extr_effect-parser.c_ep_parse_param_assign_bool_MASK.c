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
struct ep_param {int /*<<< orphan*/  default_val; } ;
struct effect_parser {int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 int PARSE_EOF ; 
 int PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,long*,int) ; 

__attribute__((used)) static inline int FUNC4(struct effect_parser *ep,
					     struct ep_param *param)
{
	if (!FUNC1(&ep->cfp))
		return PARSE_EOF;

	if (FUNC2(&ep->cfp, "true")) {
		long l = 1;
		FUNC3(param->default_val, &l, sizeof(long));
		return PARSE_SUCCESS;
	} else if (FUNC2(&ep->cfp, "false")) {
		long l = 0;
		FUNC3(param->default_val, &l, sizeof(long));
		return PARSE_SUCCESS;
	}

	FUNC0(&ep->cfp, "true or false");

	return PARSE_EOF;
}