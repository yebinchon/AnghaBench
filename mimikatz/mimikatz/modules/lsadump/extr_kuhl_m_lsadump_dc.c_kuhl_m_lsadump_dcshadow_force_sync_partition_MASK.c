#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ pVal; int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {scalar_t__ pszDsaSrc; int /*<<< orphan*/ * pNC; void* ulOptions; } ;
struct TYPE_15__ {TYPE_1__ V1; int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {void* ulOptions; scalar_t__ pszDsaSrc; int /*<<< orphan*/ * pNC; } ;
struct TYPE_14__ {TYPE_2__ V1; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {int /*<<< orphan*/  szFakeFQDN; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  scalar_t__ PSTR ;
typedef  TYPE_3__* PDCSHADOW_DOMAIN_INFO ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  DSNAME ;
typedef  TYPE_4__ DRS_MSG_REPDEL ;
typedef  TYPE_5__ DRS_MSG_REPADD ;
typedef  int /*<<< orphan*/  DRS_HANDLE ;
typedef  TYPE_6__ ATTRVAL ;

/* Variables and functions */
 void* DRS_WRIT_REP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

NTSTATUS FUNC9(PDCSHADOW_DOMAIN_INFO info, DRS_HANDLE hDrs, PWSTR szPartition)
{
	NTSTATUS status = STATUS_UNSUCCESSFUL;
	ATTRVAL attrVal = {0};
	DRS_MSG_REPADD msgAdd = {0};
	DRS_MSG_REPDEL msgDel = {0};
	PSTR szANSIFakeDCFQDN = FUNC8(info->szFakeFQDN);
	
	if(szANSIFakeDCFQDN)
	{
		if(FUNC7(&attrVal, szPartition))
		{
			msgAdd.V1.pNC = (DSNAME*) attrVal.pVal;
			msgAdd.V1.pszDsaSrc = szANSIFakeDCFQDN;
			msgAdd.V1.ulOptions = DRS_WRIT_REP;
			FUNC6(L"Syncing %s\n", szPartition);
			status = FUNC0(hDrs, 1, &msgAdd);
			if(!FUNC4(status))
				FUNC5(L"IDL_DRSReplicaAdd %s 0x%x (%u)\n", szPartition, status, status);
			msgDel.V1.pNC = msgAdd.V1.pNC;
			msgDel.V1.pszDsaSrc = msgAdd.V1.pszDsaSrc;
			msgDel.V1.ulOptions = DRS_WRIT_REP;
			status = FUNC1(hDrs, 1, &msgDel);
			if(!FUNC4(status))
				FUNC5(L"IDL_DRSReplicaDel %s 0x%x (%u)\n", szPartition, status, status);
			FUNC6(L"Sync Done\n\n");
			FUNC2(szANSIFakeDCFQDN);
			FUNC3(attrVal.pVal);
		}
	}
	return status;
}