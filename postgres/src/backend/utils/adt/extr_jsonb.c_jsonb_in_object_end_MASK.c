#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  parseState; int /*<<< orphan*/  res; } ;
typedef  TYPE_1__ JsonbInState ;

/* Variables and functions */
 int /*<<< orphan*/  WJB_END_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(void *pstate)
{
	JsonbInState *_state = (JsonbInState *) pstate;

	_state->res = FUNC0(&_state->parseState, WJB_END_OBJECT, NULL);
}