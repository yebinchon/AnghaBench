#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int WCHAR ;
typedef  int ULONG ;
struct TYPE_6__ {int* grpi0_name; } ;
struct TYPE_5__ {int* grpi1_name; int* grpi1_comment; } ;
struct TYPE_4__ {int* grpi1002_comment; } ;
typedef  int* PWSTR ;
typedef  int /*<<< orphan*/  PGROUP_USERS_INFO_0 ;
typedef  scalar_t__ NET_API_STATUS ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int INT ;
typedef  TYPE_1__ GROUP_INFO_1002 ;
typedef  TYPE_2__ GROUP_INFO_1 ;
typedef  TYPE_3__ GROUP_INFO_0 ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  MSG_GROUP_HELP ; 
 int /*<<< orphan*/  MSG_GROUP_SYNTAX ; 
 scalar_t__ NERR_Success ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int** FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int**) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC15 (int*,char*) ; 
 scalar_t__ FUNC16 (int*,char*,int) ; 

INT
FUNC17(
    INT argc,
    WCHAR **argv)
{
    INT i, j;
    INT result = 0;
    ULONG dwUserCount = 0;
    BOOL bAdd = FALSE;
    BOOL bDelete = FALSE;
#if 0
    BOOL bDomain = FALSE;
#endif
    PWSTR pGroupName = NULL;
    PWSTR pComment = NULL;
    PWSTR *pUsers = NULL;
    GROUP_INFO_0 Info0;
    GROUP_INFO_1 Info1;
    GROUP_INFO_1002 Info1002;
    NET_API_STATUS Status;

    if (argc == 2)
    {
        Status = FUNC3();
        FUNC0(StdOut, L"Status: %lu\n", Status);
        return 0;
    }
    else if (argc == 3)
    {
        Status = FUNC2(argv[2]);
        FUNC0(StdOut, L"Status: %lu\n", Status);
        return 0;
    }

    i = 2;
    if (argv[i][0] != L'/')
    {
        pGroupName = argv[i];
        i++;
    }

    for (j = i; j < argc; j++)
    {
        if (argv[j][0] == L'/')
            break;

        dwUserCount++;
    }

    if (dwUserCount > 0)
    {
        pUsers = FUNC12(FUNC14(),
                                 HEAP_ZERO_MEMORY,
                                 dwUserCount * sizeof(PGROUP_USERS_INFO_0));
        if (pUsers == NULL)
            return 0;
    }

    j = 0;
    for (; i < argc; i++)
    {
        if (argv[i][0] == L'/')
            break;

        pUsers[j] = argv[i];
        j++;
    }

    for (; i < argc; i++)
    {
        if (FUNC15(argv[i], L"/help") == 0)
        {
            FUNC10(4381);
            FUNC1(StdOut, L"\n");
            FUNC11(MSG_GROUP_SYNTAX);
            FUNC11(MSG_GROUP_HELP);
            return 0;
        }
        else if (FUNC15(argv[i], L"/add") == 0)
        {
            bAdd = TRUE;
        }
        else if (FUNC15(argv[i], L"/delete") == 0)
        {
            bDelete = TRUE;
        }
        else if (FUNC16(argv[i], L"/comment:", 9) == 0)
        {
            pComment = &argv[i][9];
        }
        else if (FUNC15(argv[i], L"/domain") == 0)
        {
            FUNC1(StdErr, L"The /DOMAIN option is not supported yet.\n");
#if 0
            bDomain = TRUE;
#endif
        }
        else
        {
            FUNC9(3506/*, argv[i]*/);
            result = 1;
            goto done;
        }
    }

    if (pGroupName == NULL)
    {
        result = 1;
        goto done;
    }

    if (bAdd && bDelete)
    {
        result = 1;
        goto done;
    }

    if (pUsers == NULL)
    {
        if (!bAdd && !bDelete && pComment != NULL)
        {
            /* Set group comment */
            Info1002.grpi1002_comment = pComment;
            Status = FUNC8(NULL,
                                     pGroupName,
                                     1002,
                                     (LPBYTE)&Info1002,
                                     NULL);
            FUNC0(StdOut, L"Status: %lu\n", Status);
        }
        else if (bAdd && !bDelete)
        {
            /* Add the group */
            if (pComment == NULL)
            {
                Info0.grpi0_name = pGroupName;
            }
            else
            {
                Info1.grpi1_name = pGroupName;
                Info1.grpi1_comment = pComment;
            }

            Status = FUNC4(NULL,
                                 (pComment == NULL) ? 0 : 1,
                                 (pComment == NULL) ? (LPBYTE)&Info0 : (LPBYTE)&Info1,
                                 NULL);
            FUNC0(StdOut, L"Status: %lu\n", Status);
        }
        else if (!bAdd && bDelete && pComment == NULL)
        {
            /* Delete the group */
            Status = FUNC6(NULL,
                                 pGroupName);
            FUNC0(StdOut, L"Status: %lu\n", Status);
        }
        else
        {
            result = 1;
        }
    }
    else
    {
        if (bAdd && !bDelete && pComment == NULL)
        {
            /* Add group user */
            for (i = 0; i < dwUserCount; i++)
            {
                Status = FUNC5(NULL,
                                         pGroupName,
                                         pUsers[i]);
                if (Status != NERR_Success)
                    break;
            }
            FUNC0(StdOut, L"Status: %lu\n", Status);
        }
        else if (!bAdd && bDelete && pComment == NULL)
        {
            /* Delete group members */
            for (i = 0; i < dwUserCount; i++)
            {
                Status = FUNC7(NULL,
                                         pGroupName,
                                         pUsers[i]);
                if (Status != NERR_Success)
                    break;
            }
            FUNC0(StdOut, L"Status: %lu\n", Status);
        }
        else
        {
            result = 1;
        }
    }

done:
    if (pUsers != NULL)
        FUNC13(FUNC14(), 0, pUsers);

    if (result != 0)
    {
        FUNC10(4381);
        FUNC1(StdOut, L"\n");
        FUNC11(MSG_GROUP_SYNTAX);
    }

    return result;
}