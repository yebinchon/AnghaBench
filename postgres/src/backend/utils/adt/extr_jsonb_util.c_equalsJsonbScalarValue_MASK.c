#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  boolean; int /*<<< orphan*/  numeric; } ;
struct TYPE_8__ {int type; TYPE_1__ val; } ;
typedef  TYPE_2__ JsonbValue ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
#define  jbvBool 131 
#define  jbvNull 130 
#define  jbvNumeric 129 
#define  jbvString 128 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  numeric_eq ; 

__attribute__((used)) static bool
FUNC5(JsonbValue *aScalar, JsonbValue *bScalar)
{
	if (aScalar->type == bScalar->type)
	{
		switch (aScalar->type)
		{
			case jbvNull:
				return true;
			case jbvString:
				return FUNC4(aScalar, bScalar) == 0;
			case jbvNumeric:
				return FUNC0(FUNC1(numeric_eq,
														FUNC2(aScalar->val.numeric),
														FUNC2(bScalar->val.numeric)));
			case jbvBool:
				return aScalar->val.boolean == bScalar->val.boolean;

			default:
				FUNC3(ERROR, "invalid jsonb scalar type");
		}
	}
	FUNC3(ERROR, "jsonb scalar type mismatch");
	return false;
}