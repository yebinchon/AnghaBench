#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ep_func {int /*<<< orphan*/  contents; } ;
struct TYPE_6__ {TYPE_2__* cur_token; } ;
struct effect_parser {TYPE_3__ cfp; } ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  str; } ;
struct TYPE_4__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ CFTOKEN_NEWLINE ; 
 scalar_t__ CFTOKEN_NONE ; 
 scalar_t__ CFTOKEN_SPACETAB ; 
 scalar_t__ FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct effect_parser*,struct ep_func*) ; 
 scalar_t__ FUNC3 (struct effect_parser*,struct ep_func*) ; 
 scalar_t__ FUNC4 (struct effect_parser*,struct ep_func*) ; 
 scalar_t__ FUNC5 (struct effect_parser*,struct ep_func*) ; 

__attribute__((used)) static inline bool FUNC6(struct effect_parser *ep,
					  struct ep_func *func)
{
	int braces = 1;

	FUNC1(&func->contents, &ep->cfp.cur_token->str);

	while (braces > 0) {
		if ((ep->cfp.cur_token++)->type == CFTOKEN_NONE)
			return false;

		if (ep->cfp.cur_token->type == CFTOKEN_SPACETAB ||
		    ep->cfp.cur_token->type == CFTOKEN_NEWLINE) {
		} else if (FUNC0(&ep->cfp, "{")) {
			braces++;
		} else if (FUNC0(&ep->cfp, "}")) {
			braces--;
		} else if (FUNC5(ep, func) ||
			   FUNC2(ep, func) ||
			   FUNC4(ep, func) ||
			   FUNC3(ep, func)) {
		}

		FUNC1(&func->contents, &ep->cfp.cur_token->str);
	}

	return true;
}