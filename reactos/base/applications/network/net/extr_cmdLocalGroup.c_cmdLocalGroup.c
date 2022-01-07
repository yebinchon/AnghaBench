
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
typedef int ULONG ;
struct TYPE_10__ {int* lgrpi0_name; } ;
struct TYPE_9__ {int* lgrpi1_name; int* lgrpi1_comment; } ;
struct TYPE_8__ {int* lgrpi1002_comment; } ;
struct TYPE_7__ {int* lgrmi3_domainandname; } ;
typedef int* NET_API_STATUS ;
typedef int* LPWSTR ;
typedef TYPE_1__* LPLOCALGROUP_MEMBERS_INFO_3 ;
typedef int LPBYTE ;
typedef TYPE_2__ LOCALGROUP_INFO_1002 ;
typedef TYPE_3__ LOCALGROUP_INFO_1 ;
typedef TYPE_4__ LOCALGROUP_INFO_0 ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 int ConPrintf (int ,char*,...) ;
 int ConPuts (int ,char*) ;
 int* DisplayLocalGroup (int*) ;
 int* EnumerateLocalGroups () ;
 scalar_t__ FALSE ;
 int HEAP_ZERO_MEMORY ;
 int MSG_LOCALGROUP_HELP ;
 int MSG_LOCALGROUP_SYNTAX ;
 int* NetLocalGroupAdd (int *,int,int ,int *) ;
 int* NetLocalGroupAddMembers (int *,int*,int,int ,int) ;
 int* NetLocalGroupDel (int *,int*) ;
 int* NetLocalGroupDelMembers (int *,int*,int,int ,int) ;
 int* NetLocalGroupSetInfo (int *,int*,int,int ,int *) ;
 int PrintErrorMessage (int) ;
 int PrintMessageString (int) ;
 int PrintNetMessage (int ) ;
 TYPE_1__* RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,TYPE_1__*) ;
 int RtlGetProcessHeap () ;
 int StdErr ;
 int StdOut ;
 scalar_t__ TRUE ;
 scalar_t__ _wcsicmp (int*,char*) ;
 scalar_t__ _wcsnicmp (int*,char*,int) ;

INT
cmdLocalGroup(
    INT argc,
    WCHAR **argv)
{
    INT i, j;
    INT result = 0;
    ULONG dwMemberCount = 0;
    BOOL bAdd = FALSE;
    BOOL bDelete = FALSE;



    LPWSTR lpGroupName = ((void*)0);
    LPWSTR lpComment = ((void*)0);
    LPLOCALGROUP_MEMBERS_INFO_3 lpMembers = ((void*)0);
    LOCALGROUP_INFO_0 Info0;
    LOCALGROUP_INFO_1 Info1;
    LOCALGROUP_INFO_1002 Info1002;
    NET_API_STATUS Status;

    if (argc == 2)
    {
        Status = EnumerateLocalGroups();
        ConPrintf(StdOut, L"Status: %lu\n", Status);
        return 0;
    }
    else if (argc == 3)
    {
        Status = DisplayLocalGroup(argv[2]);
        ConPrintf(StdOut, L"Status: %lu\n", Status);
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

    ConPrintf(StdOut, L"Member count: %lu\n", dwMemberCount);

    if (dwMemberCount > 0)
    {
        lpMembers = RtlAllocateHeap(RtlGetProcessHeap(),
                                    HEAP_ZERO_MEMORY,
                                    dwMemberCount * sizeof(LPLOCALGROUP_MEMBERS_INFO_3));
        if (lpMembers == ((void*)0))
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
        if (_wcsicmp(argv[i], L"/help") == 0)
        {
            PrintMessageString(4381);
            ConPuts(StdOut, L"\n");
            PrintNetMessage(MSG_LOCALGROUP_SYNTAX);
            PrintNetMessage(MSG_LOCALGROUP_HELP);
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
            lpComment = &argv[i][9];
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

    if (lpGroupName == ((void*)0))
    {
        result = 1;
        goto done;
    }

    if (bAdd && bDelete)
    {
        result = 1;
        goto done;
    }
    if (lpMembers == ((void*)0))
    {
        if (!bAdd && !bDelete && lpComment != ((void*)0))
        {

            Info1002.lgrpi1002_comment = lpComment;
            Status = NetLocalGroupSetInfo(((void*)0),
                                          lpGroupName,
                                          1002,
                                          (LPBYTE)&Info1002,
                                          ((void*)0));
            ConPrintf(StdOut, L"Status: %lu\n", Status);
        }
        else if (bAdd && !bDelete)
        {

            if (lpComment == ((void*)0))
            {
                Info0.lgrpi0_name = lpGroupName;
            }
            else
            {
                Info1.lgrpi1_name = lpGroupName;
                Info1.lgrpi1_comment = lpComment;
            }

            Status = NetLocalGroupAdd(((void*)0),
                                      (lpComment == ((void*)0)) ? 0 : 1,
                                      (lpComment == ((void*)0)) ? (LPBYTE)&Info0 : (LPBYTE)&Info1,
                                      ((void*)0));
            ConPrintf(StdOut, L"Status: %lu\n", Status);
        }
        else if (!bAdd && bDelete && lpComment == ((void*)0))
        {

            Status = NetLocalGroupDel(((void*)0),
                                      lpGroupName);
            ConPrintf(StdOut, L"Status: %lu\n", Status);
        }
        else
        {
            result = 1;
        }
    }
    else
    {
        if (bAdd && !bDelete && lpComment == ((void*)0))
        {

            Status = NetLocalGroupAddMembers(((void*)0),
                                             lpGroupName,
                                             3,
                                             (LPBYTE)lpMembers,
                                             dwMemberCount);
            ConPrintf(StdOut, L"Status: %lu\n", Status);
        }
        else if (!bAdd && bDelete && lpComment == ((void*)0))
        {

            Status = NetLocalGroupDelMembers(((void*)0),
                                             lpGroupName,
                                             3,
                                             (LPBYTE)lpMembers,
                                             dwMemberCount);
            ConPrintf(StdOut, L"Status: %lu\n", Status);
        }
        else
        {
            result = 1;
        }
    }

done:
    if (lpMembers != ((void*)0))
        RtlFreeHeap(RtlGetProcessHeap(), 0, lpMembers);

    if (result != 0)
    {
        PrintMessageString(4381);
        ConPuts(StdOut, L"\n");
        PrintNetMessage(MSG_LOCALGROUP_SYNTAX);
    }

    return result;
}
