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
typedef  int /*<<< orphan*/  trgm ;
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  TRGM ;
typedef  int /*<<< orphan*/  BITVECP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int32
FUNC5(TRGM *qtrg, BITVECP sign)
{
	int32		count = 0;
	int32		k,
				len = FUNC0(qtrg);
	trgm	   *ptr = FUNC2(qtrg);
	int32		tmp = 0;

	for (k = 0; k < len; k++)
	{
		FUNC1(((char *) &tmp), ptr + k);
		count += FUNC3(sign, FUNC4(tmp));
	}

	return count;
}