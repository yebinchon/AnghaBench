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
typedef  int uint64 ;
struct TYPE_5__ {int /*<<< orphan*/  len; scalar_t__ val; } ;
struct TYPE_6__ {int /*<<< orphan*/  boolean; int /*<<< orphan*/  numeric; TYPE_1__ string; } ;
struct TYPE_7__ {int type; TYPE_2__ val; } ;
typedef  TYPE_3__ JsonbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hash_numeric_extended ; 
 int /*<<< orphan*/  hashcharextended ; 
#define  jbvBool 131 
#define  jbvNull 130 
#define  jbvNumeric 129 
#define  jbvString 128 

void
FUNC8(const JsonbValue *scalarVal, uint64 *hash,
							 uint64 seed)
{
	uint64		tmp;

	switch (scalarVal->type)
	{
		case jbvNull:
			tmp = seed + 0x01;
			break;
		case jbvString:
			tmp = FUNC1(FUNC7((const unsigned char *) scalarVal->val.string.val,
												   scalarVal->val.string.len,
												   seed));
			break;
		case jbvNumeric:
			tmp = FUNC1(FUNC2(hash_numeric_extended,
													 FUNC3(scalarVal->val.numeric),
													 FUNC5(seed)));
			break;
		case jbvBool:
			if (seed)
				tmp = FUNC1(FUNC2(hashcharextended,
														 FUNC0(scalarVal->val.boolean),
														 FUNC5(seed)));
			else
				tmp = scalarVal->val.boolean ? 0x02 : 0x04;

			break;
		default:
			FUNC6(ERROR, "invalid jsonb scalar type");
			break;
	}

	*hash = FUNC4(*hash);
	*hash ^= tmp;
}