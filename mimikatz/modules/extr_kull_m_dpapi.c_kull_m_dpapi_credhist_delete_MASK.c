#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t __dwCount; int /*<<< orphan*/ * entries; } ;
typedef  TYPE_1__* PKULL_M_DPAPI_CREDHIST ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(PKULL_M_DPAPI_CREDHIST credhist)
{
	DWORD i;
	if(credhist)
	{
		for(i = 0; i < credhist->__dwCount; i++)
			FUNC1(credhist->entries[i]);
		FUNC0(credhist);
	}
}