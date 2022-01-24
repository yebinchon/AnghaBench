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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC4(StringInfo buf, HeapTuple proctup)
{
	Oid		   *trftypes;
	int			ntypes;

	ntypes = FUNC3(proctup, &trftypes);
	if (ntypes > 0)
	{
		int			i;

		FUNC1(buf, "\n TRANSFORM ");
		for (i = 0; i < ntypes; i++)
		{
			if (i != 0)
				FUNC1(buf, ", ");
			FUNC0(buf, "FOR TYPE %s", FUNC2(trftypes[i]));
		}
	}
}