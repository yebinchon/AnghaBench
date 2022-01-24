#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
struct TYPE_7__ {int /*<<< orphan*/ * children; } ;
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  TYPE_1__ JsonbContainer ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 

JsonbValue *
FUNC6(JsonbContainer *container, uint32 i)
{
	JsonbValue *result;
	char	   *base_addr;
	uint32		nelements;

	if (!FUNC0(container))
		FUNC2(ERROR, "not a jsonb array");

	nelements = FUNC1(container);
	base_addr = (char *) &container->children[nelements];

	if (i >= nelements)
		return NULL;

	result = FUNC5(sizeof(JsonbValue));

	FUNC3(container, i, base_addr,
				   FUNC4(container, i),
				   result);

	return result;
}