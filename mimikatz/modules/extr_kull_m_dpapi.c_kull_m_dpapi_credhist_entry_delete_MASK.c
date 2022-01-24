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
struct TYPE_4__ {struct TYPE_4__* pSecret; struct TYPE_4__* pSid; } ;
typedef  TYPE_1__* PKULL_M_DPAPI_CREDHIST_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(PKULL_M_DPAPI_CREDHIST_ENTRY entry)
{
	if(entry)
	{
		if(entry->pSid)
			FUNC0(entry->pSid);
		if(entry->pSecret)
			FUNC0(entry->pSecret);
		FUNC0(entry);
	}
}