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
struct TYPE_4__ {scalar_t__ DomainKey; scalar_t__ CredHist; scalar_t__ BackupKey; scalar_t__ MasterKey; } ;
typedef  TYPE_1__* PKULL_M_DPAPI_MASTERKEYS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(PKULL_M_DPAPI_MASTERKEYS masterkeys)
{
	if(masterkeys)
	{
		if(masterkeys->MasterKey)
			FUNC1(masterkeys->MasterKey);
		if(masterkeys->BackupKey)
			FUNC1(masterkeys->BackupKey);
		if(masterkeys->CredHist)
			FUNC2(masterkeys->CredHist);
		if(masterkeys->DomainKey)
			FUNC3(masterkeys->DomainKey);
		FUNC0(masterkeys);
	}
}