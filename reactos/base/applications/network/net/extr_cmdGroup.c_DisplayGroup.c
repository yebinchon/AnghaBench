
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ grpi1_comment; scalar_t__ grpi1_name; scalar_t__ grui0_name; } ;
typedef TYPE_1__* PGROUP_USERS_INFO_0 ;
typedef TYPE_1__* PGROUP_INFO_1 ;
typedef scalar_t__ NET_API_STATUS ;
typedef scalar_t__ LPWSTR ;
typedef int LPBYTE ;
typedef int INT ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int ConPrintf (int ,char*,scalar_t__) ;
 int ConPuts (int ,char*) ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 int HEAP_ZERO_MEMORY ;
 int MAX_PREFERRED_LENGTH ;
 scalar_t__ NERR_Success ;
 int NetApiBufferFree (TYPE_1__*) ;
 scalar_t__ NetGroupGetInfo (int *,scalar_t__,int,int *) ;
 scalar_t__ NetGroupGetUsers (int *,scalar_t__,int ,int *,int ,int*,int*,int *) ;
 int PrintMessageString (int) ;
 int PrintPaddedMessageString (int,int) ;
 int PrintPadding (int,int) ;
 scalar_t__* RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,scalar_t__*) ;
 int RtlGetProcessHeap () ;
 int StdOut ;

__attribute__((used)) static
NET_API_STATUS
DisplayGroup(LPWSTR lpGroupName)
{
    PGROUP_INFO_1 pGroupInfo = ((void*)0);
    PGROUP_USERS_INFO_0 pUsers = ((void*)0);
    LPWSTR *pNames = ((void*)0);
    DWORD dwRead = 0;
    DWORD dwTotal = 0;
    DWORD_PTR ResumeHandle = 0;
    DWORD i;
    INT nPaddedLength = 15;
    NET_API_STATUS Status;

    Status = NetGroupGetInfo(((void*)0),
                             lpGroupName,
                             1,
                             (LPBYTE*)&pGroupInfo);
    if (Status != NERR_Success)
        return Status;

    Status = NetGroupGetUsers(((void*)0),
                              lpGroupName,
                              0,
                              (LPBYTE*)&pUsers,
                              MAX_PREFERRED_LENGTH,
                              &dwRead,
                              &dwTotal,
                              &ResumeHandle);
    if (Status != NERR_Success)
        goto done;

    pNames = RtlAllocateHeap(RtlGetProcessHeap(),
                             HEAP_ZERO_MEMORY,
                             dwRead * sizeof(LPWSTR));
    if (pNames == ((void*)0))
    {
        Status = ERROR_OUTOFMEMORY;
        goto done;
    }

    for (i = 0; i < dwRead; i++)
    {
        pNames[i] = pUsers[i].grui0_name;
    }

    PrintPaddedMessageString(4401, nPaddedLength);
    ConPrintf(StdOut, L"%s\n", pGroupInfo->grpi1_name);

    PrintPaddedMessageString(4402, nPaddedLength);
    ConPrintf(StdOut, L"%s\n", pGroupInfo->grpi1_comment);

    ConPuts(StdOut, L"\n");

    PrintMessageString(4403);
    ConPuts(StdOut, L"\n");

    PrintPadding(L'-', 79);
    ConPuts(StdOut, L"\n");

    for (i = 0; i < dwRead; i++)
    {
        if (pNames[i])
            ConPrintf(StdOut, L"%s\n", pNames[i]);
    }

done:
    if (pNames != ((void*)0))
        RtlFreeHeap(RtlGetProcessHeap(), 0, pNames);

    if (pUsers != ((void*)0))
        NetApiBufferFree(pUsers);

    if (pGroupInfo != ((void*)0))
        NetApiBufferFree(pGroupInfo);

    return Status;
}
