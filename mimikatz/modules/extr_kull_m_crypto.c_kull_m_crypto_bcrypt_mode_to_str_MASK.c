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
typedef  size_t DWORD ;

/* Variables and functions */
 size_t const FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** BCRYPT_MODE_DESCR ; 

PCWCHAR FUNC1(const DWORD keyMode)
{
	PCWCHAR result = NULL;
	if(keyMode < FUNC0(BCRYPT_MODE_DESCR))
		return BCRYPT_MODE_DESCR[keyMode];
	return result;
}