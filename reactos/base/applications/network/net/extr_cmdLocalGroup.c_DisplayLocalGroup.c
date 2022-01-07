
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lgrpi1_comment; int * lgrpi1_name; int * lgrmi3_domainandname; int sv100_name; } ;
typedef TYPE_1__* PSERVER_INFO_100 ;
typedef TYPE_1__* PLOCALGROUP_MEMBERS_INFO_3 ;
typedef TYPE_1__* PLOCALGROUP_INFO_1 ;
typedef scalar_t__ NET_API_STATUS ;
typedef int * LPWSTR ;
typedef int LPBYTE ;
typedef int INT ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int ConPrintf (int ,char*,int *) ;
 int ConPuts (int ,char*) ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 int HEAP_ZERO_MEMORY ;
 int MAX_PREFERRED_LENGTH ;
 scalar_t__ NERR_Success ;
 int NetApiBufferFree (TYPE_1__*) ;
 scalar_t__ NetLocalGroupGetInfo (int *,int *,int,int *) ;
 scalar_t__ NetLocalGroupGetMembers (int *,int *,int,int *,int ,int*,int*,int *) ;
 scalar_t__ NetServerGetInfo (int *,int,int *) ;
 int PrintMessageString (int) ;
 int PrintPaddedMessageString (int,int) ;
 int PrintPadding (int,int) ;
 int ** RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,int **) ;
 int RtlGetProcessHeap () ;
 int StdOut ;
 int wcslen (int ) ;
 int wcsncmp (int *,int ,int) ;

__attribute__((used)) static
NET_API_STATUS
DisplayLocalGroup(LPWSTR lpGroupName)
{
    PLOCALGROUP_INFO_1 pGroupInfo = ((void*)0);
    PLOCALGROUP_MEMBERS_INFO_3 pMembers = ((void*)0);
    PSERVER_INFO_100 pServer = ((void*)0);
    LPWSTR *pNames = ((void*)0);
    DWORD dwRead = 0;
    DWORD dwTotal = 0;
    DWORD_PTR ResumeHandle = 0;
    DWORD i;
    DWORD len;
    INT nPaddedLength = 18;
    NET_API_STATUS Status;

    Status = NetLocalGroupGetInfo(((void*)0),
                                  lpGroupName,
                                  1,
                                  (LPBYTE*)&pGroupInfo);
    if (Status != NERR_Success)
        return Status;

    Status = NetLocalGroupGetMembers(((void*)0),
                                     lpGroupName,
                                     3,
                                     (LPBYTE*)&pMembers,
                                     MAX_PREFERRED_LENGTH,
                                     &dwRead,
                                     &dwTotal,
                                     &ResumeHandle);
    if (Status != NERR_Success)
        goto done;

    Status = NetServerGetInfo(((void*)0),
                              100,
                              (LPBYTE*)&pServer);
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

    len = wcslen(pServer->sv100_name);
    for (i = 0; i < dwRead; i++)
    {
         if (!wcsncmp(pMembers[i].lgrmi3_domainandname, pServer->sv100_name, len))
             pNames[i] = &pMembers[i].lgrmi3_domainandname[len + 1];
         else
             pNames[i] = pMembers[i].lgrmi3_domainandname;
    }

    PrintPaddedMessageString(4406, nPaddedLength);
    ConPrintf(StdOut, L"%s\n", pGroupInfo->lgrpi1_name);

    PrintPaddedMessageString(4407, nPaddedLength);
    ConPrintf(StdOut, L"%s\n", pGroupInfo->lgrpi1_comment);

    ConPuts(StdOut, L"\n");

    PrintMessageString(4408);
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

    if (pServer != ((void*)0))
        NetApiBufferFree(pServer);

    if (pMembers != ((void*)0))
        NetApiBufferFree(pMembers);

    if (pGroupInfo != ((void*)0))
        NetApiBufferFree(pGroupInfo);

    return Status;
}
