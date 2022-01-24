#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_3__ {int Attributes; int /*<<< orphan*/  Sid; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  TYPE_1__* PSID_AND_ATTRIBUTES ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SE_GROUP_ENABLED ; 
 int SE_GROUP_ENABLED_BY_DEFAULT ; 
 int SE_GROUP_LOGON_ID ; 
 int SE_GROUP_MANDATORY ; 
 int SE_GROUP_OWNER ; 
 int SE_GROUP_RESOURCE ; 
 int SE_GROUP_USE_FOR_DENY_ONLY ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(UCHAR l, DWORD count, PSID_AND_ATTRIBUTES sids)
{
	DWORD i;
	PWSTR name, domainName;
	for(i = 0; i < count; i++)
	{
		FUNC1(L"   %c:[%c%c%c%c%c%c%c] ", l,
				(sids[i].Attributes & SE_GROUP_MANDATORY) ? L'M' : L' ',
				(sids[i].Attributes & SE_GROUP_ENABLED_BY_DEFAULT) ? L'D' : L' ',
				(sids[i].Attributes & SE_GROUP_ENABLED) ? L'E' : L' ',
				(sids[i].Attributes & SE_GROUP_OWNER) ? L'O' : L' ',
				(sids[i].Attributes & SE_GROUP_USE_FOR_DENY_ONLY) ? L'U' : L' ',
				(sids[i].Attributes & SE_GROUP_LOGON_ID) ? L'L' : L' ',
				(sids[i].Attributes & SE_GROUP_RESOURCE) ? L'R' : L' '
				);
		if(FUNC3(sids[i].Sid, &name, &domainName, NULL, NULL))
		{
			if(FUNC4(domainName))
				FUNC1(L"%s\\", domainName);
			FUNC1(L"%s\n", name);
			FUNC0(name);
			FUNC0(domainName);
		}
		else
		{
			FUNC2(sids[i].Sid);
			FUNC1(L"\n");
		}
	}
}