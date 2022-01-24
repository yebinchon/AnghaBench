#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  header; } ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_10__ {TYPE_1__ binary; } ;
struct TYPE_11__ {int type; TYPE_2__ val; } ;
typedef  TYPE_3__ JsonbValue ;
typedef  TYPE_4__ JsonbContainer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int jbvArray ; 
 int jbvBinary ; 
 int jbvObject ; 

__attribute__((used)) static int
FUNC5(JsonbValue *jb)
{
	int			type = jb->type;

	if (jb->type == jbvBinary)
	{
		JsonbContainer *jbc = (void *) jb->val.binary.data;

		/* Scalars should be always extracted during jsonpath execution. */
		FUNC0(!FUNC3(jbc));

		if (FUNC2(jbc))
			type = jbvObject;
		else if (FUNC1(jbc))
			type = jbvArray;
		else
			FUNC4(ERROR, "invalid jsonb container type: 0x%08x", jbc->header);
	}

	return type;
}