
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef int ULONG ;
struct TYPE_6__ {int* grpi0_name; } ;
struct TYPE_5__ {int* grpi1_name; int* grpi1_comment; } ;
struct TYPE_4__ {int* grpi1002_comment; } ;
typedef int* PWSTR ;
typedef int PGROUP_USERS_INFO_0 ;
typedef scalar_t__ NET_API_STATUS ;
typedef int LPBYTE ;
typedef int INT ;
typedef TYPE_1__ GROUP_INFO_1002 ;
typedef TYPE_2__ GROUP_INFO_1 ;
typedef TYPE_3__ GROUP_INFO_0 ;
typedef scalar_t__ BOOL ;


 int ConPrintf (int ,char*,scalar_t__) ;
 int ConPuts (int ,char*) ;
 scalar_t__ DisplayGroup (int*) ;
 scalar_t__ EnumerateGroups () ;
 scalar_t__ FALSE ;
 int HEAP_ZERO_MEMORY ;
 int MSG_GROUP_HELP ;
 int MSG_GROUP_SYNTAX ;
 scalar_t__ NERR_Success ;
 scalar_t__ NetGroupAdd (int *,int,int ,int *) ;
 scalar_t__ NetGroupAddUser (int *,int*,int*) ;
 scalar_t__ NetGroupDel (int *,int*) ;
 scalar_t__ NetGroupDelUser (int *,int*,int*) ;
 scalar_t__ NetGroupSetInfo (int *,int*,int,int ,int *) ;
 int PrintErrorMessage (int) ;
 int PrintMessageString (int) ;
 int PrintNetMessage (int ) ;
 int** RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,int**) ;
 int RtlGetProcessHeap () ;
 int StdErr ;
 int StdOut ;
 scalar_t__ TRUE ;
 scalar_t__ _wcsicmp (int*,char*) ;
 scalar_t__ _wcsnicmp (int*,char*,int) ;

INT
cmdGroup(
    INT argc,
    WCHAR **argv)
{
    INT i, j;
    INT result = 0;
    ULONG dwUserCount = 0;
    BOOL bAdd = FALSE;
    BOOL bDelete = FALSE;



    PWSTR pGroupName = ((void*)0);
    PWSTR pComment = ((void*)0);
    PWSTR *pUsers = ((void*)0);
    GROUP_INFO_0 Info0;
    GROUP_INFO_1 Info1;
    GROUP_INFO_1002 Info1002;
    NET_API_STATUS Status;

    if (argc == 2)
    {
        Status = EnumerateGroups();
        ConPrintf(StdOut, L"Status: %lu\n", Status);
        return 0;
    }
    else if (argc == 3)
    {
        Status = DisplayGroup(argv[2]);
        ConPrintf(StdOut, L"Status: %lu\n", Status);
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
        pUsers = RtlAllocateHeap(RtlGetProcessHeap(),
                                 HEAP_ZERO_MEMORY,
                                 dwUserCount * sizeof(PGROUP_USERS_INFO_0));
        if (pUsers == ((void*)0))
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
        if (_wcsicmp(argv[i], L"/help") == 0)
        {
            PrintMessageString(4381);
            ConPuts(StdOut, L"\n");
            PrintNetMessage(MSG_GROUP_SYNTAX);
            PrintNetMessage(MSG_GROUP_HELP);
            return 0;
        }
        else if (_wcsicmp(argv[i], L"/add") == 0)
        {
            bAdd = TRUE;
        }
        else if (_wcsicmp(argv[i], L"/delete") == 0)
        {
            bDelete = TRUE;
        }
        else if (_wcsnicmp(argv[i], L"/comment:", 9) == 0)
        {
            pComment = &argv[i][9];
        }
        else if (_wcsicmp(argv[i], L"/domain") == 0)
        {
            ConPuts(StdErr, L"The /DOMAIN option is not supported yet.\n");



        }
        else
        {
            PrintErrorMessage(3506 );
            result = 1;
            goto done;
        }
    }

    if (pGroupName == ((void*)0))
    {
        result = 1;
        goto done;
    }

    if (bAdd && bDelete)
    {
        result = 1;
        goto done;
    }

    if (pUsers == ((void*)0))
    {
        if (!bAdd && !bDelete && pComment != ((void*)0))
        {

            Info1002.grpi1002_comment = pComment;
            Status = NetGroupSetInfo(((void*)0),
                                     pGroupName,
                                     1002,
                                     (LPBYTE)&Info1002,
                                     ((void*)0));
            ConPrintf(StdOut, L"Status: %lu\n", Status);
        }
        else if (bAdd && !bDelete)
        {

            if (pComment == ((void*)0))
            {
                Info0.grpi0_name = pGroupName;
            }
            else
            {
                Info1.grpi1_name = pGroupName;
                Info1.grpi1_comment = pComment;
            }

            Status = NetGroupAdd(((void*)0),
                                 (pComment == ((void*)0)) ? 0 : 1,
                                 (pComment == ((void*)0)) ? (LPBYTE)&Info0 : (LPBYTE)&Info1,
                                 ((void*)0));
            ConPrintf(StdOut, L"Status: %lu\n", Status);
        }
        else if (!bAdd && bDelete && pComment == ((void*)0))
        {

            Status = NetGroupDel(((void*)0),
                                 pGroupName);
            ConPrintf(StdOut, L"Status: %lu\n", Status);
        }
        else
        {
            result = 1;
        }
    }
    else
    {
        if (bAdd && !bDelete && pComment == ((void*)0))
        {

            for (i = 0; i < dwUserCount; i++)
            {
                Status = NetGroupAddUser(((void*)0),
                                         pGroupName,
                                         pUsers[i]);
                if (Status != NERR_Success)
                    break;
            }
            ConPrintf(StdOut, L"Status: %lu\n", Status);
        }
        else if (!bAdd && bDelete && pComment == ((void*)0))
        {

            for (i = 0; i < dwUserCount; i++)
            {
                Status = NetGroupDelUser(((void*)0),
                                         pGroupName,
                                         pUsers[i]);
                if (Status != NERR_Success)
                    break;
            }
            ConPrintf(StdOut, L"Status: %lu\n", Status);
        }
        else
        {
            result = 1;
        }
    }

done:
    if (pUsers != ((void*)0))
        RtlFreeHeap(RtlGetProcessHeap(), 0, pUsers);

    if (result != 0)
    {
        PrintMessageString(4381);
        ConPuts(StdOut, L"\n");
        PrintNetMessage(MSG_GROUP_SYNTAX);
    }

    return result;
}
