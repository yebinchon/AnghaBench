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
typedef  int WORD ;
struct TYPE_4__ {int length; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  SCHEMA_PREFIX_TABLE ;
typedef  scalar_t__* PSTR ;
typedef  TYPE_1__ OssEncodedOID ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int ATTRTYP ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ ,char) ; 
 int FUNC5 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOL FUNC6(SCHEMA_PREFIX_TABLE *prefixTable, LPCSTR szOid, ATTRTYP *att, BOOL toAdd)
{
	BOOL status = FALSE;
	DWORD lastValue, ndx;
	PSTR lastValueString;
	OssEncodedOID oidPrefix;

	if((lastValueString = FUNC4(szOid, '.')))
	{
		if(*(lastValueString + 1))
		{
			lastValueString++;
			lastValue = FUNC5(lastValueString, NULL, 0);
			*att = (WORD) lastValue % 0x4000;
			if(*att >= 0x4000)
				*att += 0x8000;
			if(FUNC1(szOid, &oidPrefix))
			{
				oidPrefix.length -= (lastValue < 0x80) ? 1 : 2;
				if((status = FUNC3(prefixTable, &oidPrefix, &ndx, toAdd)))
					*att |= ndx << 16;
				else FUNC0(L"kull_m_rpc_drsr_MakeAttid_addPrefixToTable\n");
				FUNC2(oidPrefix.value);
			}
		}
	}
	return status;
}