#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ep_param {int array_count; } ;
struct TYPE_7__ {TYPE_2__* cur_token; } ;
struct effect_parser {TYPE_3__ cfp; } ;
struct TYPE_5__ {int /*<<< orphan*/  array; int /*<<< orphan*/  len; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ str; } ;

/* Variables and functions */
 scalar_t__ CFTOKEN_NUM ; 
 scalar_t__ PARSE_EOF ; 
 scalar_t__ FUNC0 (TYPE_3__*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct effect_parser *ep,
				 struct ep_param *param)
{
	if (!FUNC1(&ep->cfp))
		return false;

	if (ep->cfp.cur_token->type != CFTOKEN_NUM ||
	    !FUNC3(ep->cfp.cur_token->str.array,
			   ep->cfp.cur_token->str.len))
		return false;

	param->array_count =
		(int)FUNC2(ep->cfp.cur_token->str.array, NULL, 10);

	if (FUNC0(&ep->cfp, "]", ";", NULL) == PARSE_EOF)
		return false;

	if (!FUNC1(&ep->cfp))
		return false;

	return true;
}