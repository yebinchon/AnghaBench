#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ep_func {int /*<<< orphan*/  name; int /*<<< orphan*/  func_deps; } ;
struct TYPE_4__ {TYPE_1__* cur_token; } ;
struct effect_parser {TYPE_2__ cfp; } ;
struct TYPE_3__ {int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ep_func* FUNC1 (struct effect_parser*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC2(struct effect_parser *ep,
				       struct ep_func *func)
{
	struct ep_func *val = FUNC1(ep, &ep->cfp.cur_token->str);
	if (val)
		FUNC0(func->func_deps, &val->name);
	return val != NULL;
}