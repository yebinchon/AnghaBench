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
typedef  size_t int32 ;
typedef  int /*<<< orphan*/  SignTSVector ;
typedef  scalar_t__ BITVECP ;
typedef  int /*<<< orphan*/  BITVEC ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 size_t* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(BITVECP sign, SignTSVector *a)
{
	int32		k,
				len = FUNC0(a);
	int32	   *ptr = FUNC1(a);

	FUNC3((void *) sign, 0, sizeof(BITVEC));
	for (k = 0; k < len; k++)
		FUNC2(sign, ptr[k]);
}