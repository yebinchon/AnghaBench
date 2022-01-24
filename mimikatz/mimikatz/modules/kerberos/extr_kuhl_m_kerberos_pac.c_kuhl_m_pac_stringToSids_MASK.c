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
struct TYPE_3__ {int /*<<< orphan*/  Attributes; int /*<<< orphan*/  Sid; } ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  TYPE_1__* PKERB_SID_AND_ATTRIBUTES ;
typedef  scalar_t__ PCWSTR ;
typedef  int /*<<< orphan*/  KERB_SID_AND_ATTRIBUTES ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  DEFAULT_GROUP_ATTRIBUTES ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 

BOOL FUNC6(PCWSTR szSids, PKERB_SID_AND_ATTRIBUTES *sids, DWORD *cbSids)
{
	PWSTR dupSids, nextSetToken, SetToken;
	DWORD i;
	PSID tmp = NULL;
	*sids = NULL;
	*cbSids = 0;
	if(szSids)
	{
		if((dupSids = FUNC3(szSids)))
		{
			for(nextSetToken = NULL, SetToken = FUNC5(dupSids, L",", &nextSetToken); SetToken; SetToken = FUNC5(NULL, L",", &nextSetToken))
			{
				if(FUNC0(SetToken, &tmp))
				{
					(*cbSids)++;
					FUNC2(tmp);
				}
			}
			FUNC4(dupSids);
		}
		if(*cbSids && (*sids = (PKERB_SID_AND_ATTRIBUTES) FUNC1(LPTR, *cbSids * sizeof(KERB_SID_AND_ATTRIBUTES))))
		{
			if((dupSids = FUNC3(szSids)))
			{
				for(i = 0, nextSetToken = NULL, SetToken = FUNC5(dupSids, L",", &nextSetToken); (i < *cbSids) && SetToken; SetToken = FUNC5(NULL, L",", &nextSetToken))
					if(FUNC0(SetToken, (PSID *) &(*sids)[i].Sid))
						(*sids)[i++].Attributes = DEFAULT_GROUP_ATTRIBUTES;
				FUNC4(dupSids);
			}
		}
	}
	return (*sids && *cbSids);
}