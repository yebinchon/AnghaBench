#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WhoamiTable ;
struct TYPE_10__ {int /*<<< orphan*/  Sid; } ;
struct TYPE_11__ {TYPE_1__ User; } ;
typedef  TYPE_2__* PTOKEN_USER ;
typedef  TYPE_2__* LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  IDS_COL_SID ; 
 int /*<<< orphan*/  IDS_COL_USER_NAME ; 
 int /*<<< orphan*/  IDS_USER_HEADER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  NameSamCompatible ; 
 int /*<<< orphan*/  TokenUser ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int,int) ; 

int FUNC10(void)
{
    PTOKEN_USER pUserInfo = (PTOKEN_USER) FUNC4(TokenUser);
    LPWSTR pUserStr = NULL;
    LPWSTR pSidStr = NULL;
    WhoamiTable *UserTable = NULL;

    if (pUserInfo == NULL)
    {
        return 1;
    }

    pUserStr = FUNC5(NameSamCompatible);
    if (pUserStr == NULL)
    {
        FUNC3(pUserInfo);
        return 1;
    }

    UserTable = FUNC2(2, 2);

    FUNC7(IDS_USER_HEADER);

    /* set the column labels */
    FUNC9(UserTable, FUNC6(IDS_COL_USER_NAME), 0, 0);
    FUNC9(UserTable, FUNC6(IDS_COL_SID), 0, 1);

    FUNC0(pUserInfo->User.Sid, &pSidStr);

    /* set the values for our single row of data */
    FUNC9(UserTable, pUserStr, 1, 0);
    FUNC9(UserTable, pSidStr, 1, 1);

    FUNC8(UserTable);

    /* cleanup our allocations */
    FUNC1(pSidStr);
    FUNC3(pUserInfo);
    FUNC3(pUserStr);

    return 0;
}