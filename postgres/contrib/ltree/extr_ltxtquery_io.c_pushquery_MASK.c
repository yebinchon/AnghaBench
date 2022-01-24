#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
typedef  int int32 ;
struct TYPE_5__ {int type; int val; int distance; int length; struct TYPE_5__* next; int /*<<< orphan*/  flag; } ;
struct TYPE_4__ {int /*<<< orphan*/  num; TYPE_2__* str; } ;
typedef  TYPE_1__ QPRS_STATE ;
typedef  TYPE_2__ NODE ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(QPRS_STATE *state, int32 type, int32 val, int32 distance, int32 lenval, uint16 flag)
{
	NODE	   *tmp = (NODE *) FUNC3(sizeof(NODE));

	tmp->type = type;
	tmp->val = val;
	tmp->flag = flag;
	if (distance > 0xffff)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC2("value is too big")));
	if (lenval > 0xff)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC2("operand is too long")));
	tmp->distance = distance;
	tmp->length = lenval;
	tmp->next = state->str;
	state->str = tmp;
	state->num++;
}