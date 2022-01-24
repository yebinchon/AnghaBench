#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_8__ {int /*<<< orphan*/ * children; } ;
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  TYPE_1__ JsonbContainer ;
typedef  int /*<<< orphan*/  JEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (char const*,int,char const*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 

JsonbValue *
FUNC8(JsonbContainer *container,
							 const char *keyVal, int keyLen, JsonbValue *res)
{
	JEntry	   *children = container->children;
	int			count = FUNC2(container);
	char	   *baseAddr;
	uint32		stopLow,
				stopHigh;

	FUNC0(FUNC1(container));

	/* Quick out without a palloc cycle if object is empty */
	if (count <= 0)
		return NULL;

	/*
	 * Binary search the container. Since we know this is an object, account
	 * for *Pairs* of Jentrys
	 */
	baseAddr = (char *) (children + count * 2);
	stopLow = 0;
	stopHigh = count;
	while (stopLow < stopHigh)
	{
		uint32		stopMiddle;
		int			difference;
		const char *candidateVal;
		int			candidateLen;

		stopMiddle = stopLow + (stopHigh - stopLow) / 2;

		candidateVal = baseAddr + FUNC5(container, stopMiddle);
		candidateLen = FUNC4(container, stopMiddle);

		difference = FUNC6(candidateVal, candidateLen,
											  keyVal, keyLen);

		if (difference == 0)
		{
			/* Found our key, return corresponding value */
			int			index = stopMiddle + count;

			if (!res)
				res = FUNC7(sizeof(JsonbValue));

			FUNC3(container, index, baseAddr,
						   FUNC5(container, index),
						   res);

			return res;
		}
		else
		{
			if (difference < 0)
				stopLow = stopMiddle + 1;
			else
				stopHigh = stopMiddle;
		}
	}

	/* Not found */
	return NULL;
}