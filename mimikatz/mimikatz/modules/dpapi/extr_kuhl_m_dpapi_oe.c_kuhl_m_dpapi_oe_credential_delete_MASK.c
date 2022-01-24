#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sid; } ;
struct TYPE_7__ {scalar_t__ Blink; scalar_t__ Flink; } ;
struct TYPE_8__ {TYPE_1__ data; TYPE_2__ navigator; } ;
typedef  TYPE_3__* PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY entry)
{
	PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY entryB = (PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) entry->navigator.Blink, entryF = (PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) entry->navigator.Flink;
	
	if(entry)
	{
		((PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) entry->navigator.Blink)->navigator.Flink = entry->navigator.Flink;
		((PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) entry->navigator.Flink)->navigator.Blink = entry->navigator.Blink;
		if(entry->data.sid)
			FUNC1(entry->data.sid);
		FUNC0(entry);
	}
}