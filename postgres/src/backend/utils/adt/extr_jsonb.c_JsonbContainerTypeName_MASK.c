#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  header; } ;
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  TYPE_1__ JsonbContainer ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char const* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC5(JsonbContainer *jbc)
{
	JsonbValue	scalar;

	if (FUNC2(jbc, &scalar))
		return FUNC3(&scalar);
	else if (FUNC0(jbc))
		return "array";
	else if (FUNC1(jbc))
		return "object";
	else
	{
		FUNC4(ERROR, "invalid jsonb container type: 0x%08x", jbc->header);
		return "unknown";
	}
}