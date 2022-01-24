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
typedef  int /*<<< orphan*/ * PCWCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int const FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** BCRYPT_ASYM_ALGORITHMS ; 

PCWCHAR FUNC1(const DWORD alg)
{
	PCWCHAR result = NULL;
	if(alg && (alg <= FUNC0(BCRYPT_ASYM_ALGORITHMS)))
		return BCRYPT_ASYM_ALGORITHMS[alg - 1];
	return result;
}