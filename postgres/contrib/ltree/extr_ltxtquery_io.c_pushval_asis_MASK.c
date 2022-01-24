#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
typedef  int int32 ;
struct TYPE_4__ {char* curop; char* op; int lenop; int sumlen; } ;
typedef  TYPE_1__ QPRS_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (void*,int) ; 

__attribute__((used)) static void
FUNC7(QPRS_STATE *state, int type, char *strval, int lenval, uint16 flag)
{
	if (lenval > 0xffff)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC2("word is too long")));

	FUNC5(state, type, FUNC3(strval, lenval),
			  state->curop - state->op, lenval, flag);

	while (state->curop - state->op + lenval + 1 >= state->lenop)
	{
		int32		tmp = state->curop - state->op;

		state->lenop *= 2;
		state->op = (char *) FUNC6((void *) state->op, state->lenop);
		state->curop = state->op + tmp;
	}
	FUNC4((void *) state->curop, (void *) strval, lenval);
	state->curop += lenval;
	*(state->curop) = '\0';
	state->curop++;
	state->sumlen += lenval + 1;
	return;
}