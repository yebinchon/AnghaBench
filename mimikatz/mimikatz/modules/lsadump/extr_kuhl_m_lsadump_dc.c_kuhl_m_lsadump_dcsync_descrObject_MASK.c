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
typedef  int /*<<< orphan*/  SCHEMA_PREFIX_TABLE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  ATTRBLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szOID_ANSI_currentValue ; 
 int /*<<< orphan*/  szOID_ANSI_name ; 
 int /*<<< orphan*/  szOID_ANSI_sAMAccountName ; 
 int /*<<< orphan*/  szOID_ANSI_trustPartner ; 

void FUNC6(SCHEMA_PREFIX_TABLE *prefixTable, ATTRBLOCK *attributes, LPCWSTR szSrcDomain, BOOL someExport)
{
	FUNC5(L"\nObject RDN           : ", prefixTable, attributes, szOID_ANSI_name, TRUE);
	FUNC0(L"\n");
	if(FUNC4(prefixTable, attributes, szOID_ANSI_sAMAccountName, NULL, NULL))
		FUNC3(prefixTable, attributes);
	else if(FUNC4(prefixTable, attributes, szOID_ANSI_trustPartner, NULL, NULL))
		FUNC2(prefixTable, attributes, szSrcDomain);
	else if(FUNC4(prefixTable, attributes, szOID_ANSI_currentValue, NULL, NULL))
		FUNC1(prefixTable, attributes, someExport);
}