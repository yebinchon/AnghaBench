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
struct TYPE_5__ {int nPairs; int /*<<< orphan*/ * pairs; } ;
struct TYPE_6__ {TYPE_1__ object; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ val; } ;
typedef  TYPE_3__ JsonbValue ;
typedef  int /*<<< orphan*/  JsonbPair ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ jbvObject ; 
 int /*<<< orphan*/  lengthCompareJsonbPair ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC4(JsonbValue *object)
{
	bool		hasNonUniq = false;

	FUNC0(object->type == jbvObject);

	if (object->val.object.nPairs > 1)
		FUNC3(object->val.object.pairs, object->val.object.nPairs, sizeof(JsonbPair),
				  lengthCompareJsonbPair, &hasNonUniq);

	if (hasNonUniq)
	{
		JsonbPair  *ptr = object->val.object.pairs + 1,
				   *res = object->val.object.pairs;

		while (ptr - object->val.object.pairs < object->val.object.nPairs)
		{
			/* Avoid copying over duplicate */
			if (FUNC1(ptr, res) != 0)
			{
				res++;
				if (ptr != res)
					FUNC2(res, ptr, sizeof(JsonbPair));
			}
			ptr++;
		}

		object->val.object.nPairs = res + 1 - object->val.object.pairs;
	}
}