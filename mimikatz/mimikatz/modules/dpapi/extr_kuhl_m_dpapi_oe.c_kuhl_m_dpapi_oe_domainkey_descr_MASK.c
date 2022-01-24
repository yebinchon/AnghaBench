#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ isNewKey; int /*<<< orphan*/  guid; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef  TYPE_2__* PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY entry)
{
	if(entry)
	{
		FUNC0(L"GUID:");
		FUNC1(&entry->data.guid);
		FUNC0(L";TYPE:%s\n", entry->data.isNewKey ? L"RSA" : L"LEGACY");
	}
}