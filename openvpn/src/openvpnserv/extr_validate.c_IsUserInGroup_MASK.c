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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {int /*<<< orphan*/  lgrmi0_sid; } ;
struct TYPE_7__ {size_t GroupCount; TYPE_1__* Groups; } ;
struct TYPE_6__ {int /*<<< orphan*/  Sid; } ;
typedef  TYPE_2__* PTOKEN_GROUPS ;
typedef  int /*<<< orphan*/  PSID ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  TYPE_3__ LOCALGROUP_MEMBERS_INFO_0 ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 size_t ERROR_MORE_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_PREFERRED_LENGTH ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 size_t NERR_GroupNotFound ; 
 size_t NERR_Success ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*,size_t*,int /*<<< orphan*/ *) ; 
 int SECURITY_MAX_SID_SIZE ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL
FUNC8(PSID sid, const PTOKEN_GROUPS token_groups, const WCHAR *group_name)
{
    BOOL ret = FALSE;
    DWORD_PTR resume = 0;
    DWORD err;
    BYTE grp_sid[SECURITY_MAX_SID_SIZE];
    int nloop = 0; /* a counter used to not get stuck in the do .. while() */

    /* first check in the token groups */
    if (token_groups && FUNC1(group_name, (PSID) grp_sid, FUNC7(grp_sid)))
    {
        for (DWORD i = 0; i < token_groups->GroupCount; ++i)
        {
            if (FUNC0((PSID) grp_sid, token_groups->Groups[i].Sid))
            {
                return TRUE;
            }
        }
    }

    /* check user's SID is a member of the group */
    if (!sid)
    {
        return FALSE;
    }
    do
    {
        DWORD nread, nmax;
        LOCALGROUP_MEMBERS_INFO_0 *members = NULL;
        err = FUNC4(NULL, group_name, 0, (LPBYTE *) &members,
                                      MAX_PREFERRED_LENGTH, &nread, &nmax, &resume);
        if ((err != NERR_Success && err != ERROR_MORE_DATA))
        {
            break;
        }
        /* If a match is already found, ret == TRUE and the loop is skipped */
        for (DWORD i = 0; i < nread && !ret; ++i)
        {
            ret = FUNC0(members[i].lgrmi0_sid, sid);
        }
        FUNC3(members);
        /* MSDN says the lookup should always iterate until err != ERROR_MORE_DATA */
    } while (err == ERROR_MORE_DATA && nloop++ < 100);

    if (err != NERR_Success && err != NERR_GroupNotFound)
    {
        FUNC5(err);
        FUNC2(M_SYSERR, FUNC6("In NetLocalGroupGetMembers for group '%s'"), group_name);
    }

    return ret;
}