#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int WCHAR ;
typedef  int ULONG ;
struct TYPE_10__ {int* lgrpi0_name; } ;
struct TYPE_9__ {int* lgrpi1_name; int* lgrpi1_comment; } ;
struct TYPE_8__ {int* lgrpi1002_comment; } ;
struct TYPE_7__ {int* lgrmi3_domainandname; } ;
typedef  int* NET_API_STATUS ;
typedef  int* LPWSTR ;
typedef  TYPE_1__* LPLOCALGROUP_MEMBERS_INFO_3 ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  TYPE_2__ LOCALGROUP_INFO_1002 ;
typedef  TYPE_3__ LOCALGROUP_INFO_1 ;
typedef  TYPE_4__ LOCALGROUP_INFO_0 ;
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int* FUNC2 (int*) ; 
 int* FUNC3 () ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  MSG_LOCALGROUP_HELP ; 
 int /*<<< orphan*/  MSG_LOCALGROUP_SYNTAX ; 
 int* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* FUNC5 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ,int) ; 
 int* FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int* FUNC7 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ,int) ; 
 int* FUNC8 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
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
    ULONG dwMemberCount = 0;
    BOOL bAdd = FALSE;
    BOOL bDelete = FALSE;
#if 0
    BOOL bDomain = FALSE;
#endif
    LPWSTR lpGroupName = NULL;
    LPWSTR lpComment = NULL;
    LPLOCALGROUP_MEMBERS_INFO_3 lpMembers = NULL;
    LOCALGROUP_INFO_0 Info0;
    LOCALGROUP_INFO_1 Info1;
    LOCALGROUP_INFO_1002 Info1002;
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
        lpGroupName = argv[i];
        i++;
    }

    for (j = i; j < argc; j++)
    {
        if (argv[j][0] == L'/')
            break;

        dwMemberCount++;
    }

    FUNC0(StdOut, L"Member count: %lu\n", dwMemberCount);

    if (dwMemberCount > 0)
    {
        lpMembers = FUNC12(FUNC14(),
                                    HEAP_ZERO_MEMORY,
                                    dwMemberCount * sizeof(LPLOCALGROUP_MEMBERS_INFO_3));
        if (lpMembers == NULL)
            return 0;
    }

    j = 0;
    for (; i < argc; i++)
    {
        if (argv[i][0] == L'/')
            break;

        lpMembers[j].lgrmi3_domainandname = argv[i];
        j++;
    }

    for (; i < argc; i++)
    {
        if (FUNC15(argv[i], L"/help") == 0)
        {
            FUNC10(4381);
            FUNC1(StdOut, L"\n");
            FUNC11(MSG_LOCALGROUP_SYNTAX);
            FUNC11(MSG_LOCALGROUP_HELP);
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
            lpComment = &argv[i][9];
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

    if (lpGroupName == NULL)
    {
        result = 1;
        goto done;
    }

    if (bAdd && bDelete)
    {
        result = 1;
        goto done;
    }

#if 0
    ConPrintf(StdOut, L"Group:\n  %s\n", lpGroupName);

    if (lpMembers != NULL)
    {
        ConPuts(StdOut, L"\nMembers:\n");
        for (i = 0; i < dwMemberCount; i++)
            ConPrintf(StdOut, L"  %s\n", lpMembers[i].lgrmi3_domainandname);
    }

    if (lpComment != NULL)
    {
        ConPrintf(StdOut, L"\nComment:\n  %s\n", lpComment);
    }
#endif

    if (lpMembers == NULL)
    {
        if (!bAdd && !bDelete && lpComment != NULL)
        {
            /* Set group comment */
            Info1002.lgrpi1002_comment = lpComment;
            Status = FUNC8(NULL,
                                          lpGroupName,
                                          1002,
                                          (LPBYTE)&Info1002,
                                          NULL);
            FUNC0(StdOut, L"Status: %lu\n", Status);
        }
        else if (bAdd && !bDelete)
        {
            /* Add the group */
            if (lpComment == NULL)
            {
                Info0.lgrpi0_name = lpGroupName;
            }
            else
            {
                Info1.lgrpi1_name = lpGroupName;
                Info1.lgrpi1_comment = lpComment;
            }

            Status = FUNC4(NULL,
                                      (lpComment == NULL) ? 0 : 1,
                                      (lpComment == NULL) ? (LPBYTE)&Info0 : (LPBYTE)&Info1,
                                      NULL);
            FUNC0(StdOut, L"Status: %lu\n", Status);
        }
        else if (!bAdd && bDelete && lpComment == NULL)
        {
            /* Delete the group */
            Status = FUNC6(NULL,
                                      lpGroupName);
            FUNC0(StdOut, L"Status: %lu\n", Status);
        }
        else
        {
            result = 1;
        }
    }
    else
    {
        if (bAdd && !bDelete && lpComment == NULL)
        {
            /* Add group members */
            Status = FUNC5(NULL,
                                             lpGroupName,
                                             3,
                                             (LPBYTE)lpMembers,
                                             dwMemberCount);
            FUNC0(StdOut, L"Status: %lu\n", Status);
        }
        else if (!bAdd && bDelete && lpComment == NULL)
        {
            /* Delete group members */
            Status = FUNC7(NULL,
                                             lpGroupName,
                                             3,
                                             (LPBYTE)lpMembers,
                                             dwMemberCount);
            FUNC0(StdOut, L"Status: %lu\n", Status);
        }
        else
        {
            result = 1;
        }
    }

done:
    if (lpMembers != NULL)
        FUNC13(FUNC14(), 0, lpMembers);

    if (result != 0)
    {
        FUNC10(4381);
        FUNC1(StdOut, L"\n");
        FUNC11(MSG_LOCALGROUP_SYNTAX);
    }

    return result;
}