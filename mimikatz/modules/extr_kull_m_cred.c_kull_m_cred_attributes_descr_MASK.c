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
typedef  int /*<<< orphan*/  PKULL_M_CRED_ATTRIBUTE ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 

void FUNC1(DWORD level, PKULL_M_CRED_ATTRIBUTE *Attributes, DWORD count)
{
	DWORD i;
	if(count && Attributes)
		for(i = 0; i < count; i++)
			FUNC0(level, Attributes[i]);
}