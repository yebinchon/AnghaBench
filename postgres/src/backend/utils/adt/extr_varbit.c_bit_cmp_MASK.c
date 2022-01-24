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
typedef  int int32 ;
typedef  int /*<<< orphan*/  VarBit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32
FUNC5(VarBit *arg1, VarBit *arg2)
{
	int			bitlen1,
				bytelen1,
				bitlen2,
				bytelen2;
	int32		cmp;

	bytelen1 = FUNC1(arg1);
	bytelen2 = FUNC1(arg2);

	cmp = FUNC4(FUNC3(arg1), FUNC3(arg2), FUNC0(bytelen1, bytelen2));
	if (cmp == 0)
	{
		bitlen1 = FUNC2(arg1);
		bitlen2 = FUNC2(arg2);
		if (bitlen1 != bitlen2)
			cmp = (bitlen1 < bitlen2) ? -1 : 1;
	}
	return cmp;
}