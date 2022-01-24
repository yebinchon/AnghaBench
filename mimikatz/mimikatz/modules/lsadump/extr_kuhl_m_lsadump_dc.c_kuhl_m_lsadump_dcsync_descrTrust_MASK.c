#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ USHORT ;
struct TYPE_8__ {scalar_t__ Buffer; scalar_t__ MaximumLength; scalar_t__ Length; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int /*<<< orphan*/  SCHEMA_PREFIX_TABLE ;
typedef  scalar_t__ PWSTR ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  ATTRBLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  szOID_ANSI_trustPartner ; 

void FUNC7(SCHEMA_PREFIX_TABLE *prefixTable, ATTRBLOCK *attributes, LPCWSTR szSrcDomain)
{
	PBYTE encodedData;
	DWORD encodedDataSize;
	UNICODE_STRING uPartner, uDomain, uUpcasePartner, uUpcaseDomain;
	
	FUNC4(L"** TRUSTED DOMAIN - Antisocial **\n\n");
	
	if(FUNC6(prefixTable, attributes, szOID_ANSI_trustPartner, &encodedData, &encodedDataSize))
	{
		uPartner.Length = uPartner.MaximumLength = (USHORT) encodedDataSize;
		uPartner.Buffer = (PWSTR) encodedData;
		FUNC4(L"Partner              : %wZ\n", &uPartner);
		if(FUNC0(FUNC3(&uUpcasePartner, &uPartner, TRUE)))
		{
			FUNC2(&uDomain, szSrcDomain);
			if(FUNC0(FUNC3(&uUpcaseDomain, &uDomain, TRUE)))
			{
				FUNC5(prefixTable, attributes, &uUpcaseDomain, &uUpcasePartner, TRUE);
				FUNC5(prefixTable, attributes, &uUpcaseDomain, &uUpcasePartner, FALSE);
				FUNC1(&uUpcaseDomain);
			}
			FUNC1(&uUpcasePartner);
		}
	}
}