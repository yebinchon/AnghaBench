#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  val; } ;
struct TYPE_7__ {int /*<<< orphan*/  boolean; int /*<<< orphan*/  numeric; TYPE_1__ string; } ;
struct TYPE_8__ {int type; TYPE_2__ val; } ;
typedef  TYPE_3__ JsonbValue ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_COLLATION_OID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
#define  jbvBool 131 
#define  jbvNull 130 
#define  jbvNumeric 129 
#define  jbvString 128 
 int /*<<< orphan*/  numeric_cmp ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(JsonbValue *aScalar, JsonbValue *bScalar)
{
	if (aScalar->type == bScalar->type)
	{
		switch (aScalar->type)
		{
			case jbvNull:
				return 0;
			case jbvString:
				return FUNC4(aScalar->val.string.val,
								  aScalar->val.string.len,
								  bScalar->val.string.val,
								  bScalar->val.string.len,
								  DEFAULT_COLLATION_OID);
			case jbvNumeric:
				return FUNC0(FUNC1(numeric_cmp,
														 FUNC2(aScalar->val.numeric),
														 FUNC2(bScalar->val.numeric)));
			case jbvBool:
				if (aScalar->val.boolean == bScalar->val.boolean)
					return 0;
				else if (aScalar->val.boolean > bScalar->val.boolean)
					return 1;
				else
					return -1;
			default:
				FUNC3(ERROR, "invalid jsonb scalar type");
		}
	}
	FUNC3(ERROR, "jsonb scalar type mismatch");
	return -1;
}