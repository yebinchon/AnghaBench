#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * lgrpi1_comment; int /*<<< orphan*/ * lgrpi1_name; int /*<<< orphan*/ * lgrmi3_domainandname; int /*<<< orphan*/  sv100_name; } ;
typedef  TYPE_1__* PSERVER_INFO_100 ;
typedef  TYPE_1__* PLOCALGROUP_MEMBERS_INFO_3 ;
typedef  TYPE_1__* PLOCALGROUP_INFO_1 ;
typedef  scalar_t__ NET_API_STATUS ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int INT ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  MAX_PREFERRED_LENGTH ; 
 scalar_t__ NERR_Success ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/ ** FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  StdOut ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
NET_API_STATUS
FUNC14(LPWSTR lpGroupName)
{
    PLOCALGROUP_INFO_1 pGroupInfo = NULL;
    PLOCALGROUP_MEMBERS_INFO_3 pMembers = NULL;
    PSERVER_INFO_100 pServer = NULL;
    LPWSTR *pNames = NULL;
    DWORD dwRead = 0;
    DWORD dwTotal = 0;
    DWORD_PTR ResumeHandle = 0;
    DWORD i;
    DWORD len;
    INT nPaddedLength = 18;
    NET_API_STATUS Status;

    Status = FUNC3(NULL,
                                  lpGroupName,
                                  1,
                                  (LPBYTE*)&pGroupInfo);
    if (Status != NERR_Success)
        return Status;

    Status = FUNC4(NULL,
                                     lpGroupName,
                                     3,
                                     (LPBYTE*)&pMembers,
                                     MAX_PREFERRED_LENGTH,
                                     &dwRead,
                                     &dwTotal,
                                     &ResumeHandle);
    if (Status != NERR_Success)
        goto done;

    Status = FUNC5(NULL,
                              100,
                              (LPBYTE*)&pServer);
    if (Status != NERR_Success)
        goto done;

    pNames = FUNC9(FUNC11(),
                             HEAP_ZERO_MEMORY,
                             dwRead * sizeof(LPWSTR));
    if (pNames == NULL)
    {
        Status = ERROR_OUTOFMEMORY;
        goto done;
    }

    len = FUNC12(pServer->sv100_name);
    for (i = 0; i < dwRead; i++)
    {
         if (!FUNC13(pMembers[i].lgrmi3_domainandname, pServer->sv100_name, len))
             pNames[i] = &pMembers[i].lgrmi3_domainandname[len + 1];
         else
             pNames[i] = pMembers[i].lgrmi3_domainandname;
    }

    FUNC7(4406, nPaddedLength);
    FUNC0(StdOut, L"%s\n", pGroupInfo->lgrpi1_name);

    FUNC7(4407, nPaddedLength);
    FUNC0(StdOut, L"%s\n", pGroupInfo->lgrpi1_comment);

    FUNC1(StdOut, L"\n");

    FUNC6(4408);
    FUNC1(StdOut, L"\n");

    FUNC8(L'-', 79);
    FUNC1(StdOut, L"\n");

    for (i = 0; i < dwRead; i++)
    {
        if (pNames[i])
            FUNC0(StdOut, L"%s\n", pNames[i]);
    }

done:
    if (pNames != NULL)
        FUNC10(FUNC11(), 0, pNames);

    if (pServer != NULL)
        FUNC2(pServer);

    if (pMembers != NULL)
        FUNC2(pMembers);

    if (pGroupInfo != NULL)
        FUNC2(pGroupInfo);

    return Status;
}