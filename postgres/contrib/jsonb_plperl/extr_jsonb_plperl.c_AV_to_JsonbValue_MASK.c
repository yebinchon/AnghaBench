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
typedef  int /*<<< orphan*/  SV ;
typedef  scalar_t__ SSize_t ;
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  int /*<<< orphan*/  JsonbParseState ;
typedef  int /*<<< orphan*/  AV ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  WJB_BEGIN_ARRAY ; 
 int /*<<< orphan*/  WJB_END_ARRAY ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static JsonbValue *
FUNC4(AV *in, JsonbParseState **jsonb_state)
{
	dTHX;
	SSize_t		pcount = FUNC2(in) + 1;
	SSize_t		i;

	FUNC3(jsonb_state, WJB_BEGIN_ARRAY, NULL);

	for (i = 0; i < pcount; i++)
	{
		SV		  **value = FUNC1(in, i, FALSE);

		if (value)
			(void) FUNC0(*value, jsonb_state, true);
	}

	return FUNC3(jsonb_state, WJB_END_ARRAY, NULL);
}