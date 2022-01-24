#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sv102_hidden; int /*<<< orphan*/  sv102_disc; int /*<<< orphan*/  sv102_users; int /*<<< orphan*/  sv102_version_minor; int /*<<< orphan*/  sv102_version_major; int /*<<< orphan*/  sv102_comment; int /*<<< orphan*/  sv102_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  svti0_networkaddress; int /*<<< orphan*/ * svti0_transportname; } ;
typedef  TYPE_1__* PSERVER_TRANSPORT_INFO_0 ;
typedef  TYPE_2__* PSERVER_INFO_102 ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  scalar_t__ NET_API_STATUS ;
typedef  int INT ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MAX_PREFERRED_LENGTH ; 
 scalar_t__ NERR_Success ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ SV_HIDDEN ; 
 int /*<<< orphan*/  SV_NODISC ; 
 int /*<<< orphan*/  StdOut ; 

__attribute__((used)) static
INT
FUNC6(
    PSERVER_INFO_102 ServerInfo)
{
    PSERVER_TRANSPORT_INFO_0 TransportInfo = NULL;
    DWORD dwRead, dwTotal, i;
    INT nPaddedLength = 38;
    NET_API_STATUS Status;

    Status = FUNC3(NULL, 0, (PBYTE*)&TransportInfo,
                                    MAX_PREFERRED_LENGTH,
                                    &dwRead,
                                    &dwTotal,
                                    NULL);
    if (Status != NERR_Success)
        goto done;

    FUNC5(4481, nPaddedLength);
    FUNC0(StdOut, L"\\\\%s\n", ServerInfo->sv102_name);

    FUNC5(4482, nPaddedLength);
    FUNC0(StdOut, L"%s\n\n", ServerInfo->sv102_comment);

    FUNC5(4484, nPaddedLength);
    FUNC0(StdOut, L"%lu.%lu\n",
              ServerInfo->sv102_version_major,
              ServerInfo->sv102_version_minor);

    FUNC5(4489, nPaddedLength);
    FUNC1(StdOut, L"\n");
    for (i = 0; i < dwRead; i++)
    {
        FUNC0(StdOut, L"      %s (%s)\n",
                  TransportInfo[i].svti0_transportname[8],
                  TransportInfo[i].svti0_networkaddress);
    }
    FUNC1(StdOut, L"\n");

    FUNC5(4492, nPaddedLength);
    FUNC4((ServerInfo->sv102_hidden == SV_HIDDEN) ? 4300 : 4301);
    FUNC1(StdOut, L"\n");

    FUNC5(4506, nPaddedLength);
    FUNC0(StdOut, L"%lu\n", ServerInfo->sv102_users);

    FUNC5(4511, nPaddedLength);
    FUNC1(StdOut, L"...\n\n");

    FUNC5(4520, nPaddedLength);
    if (ServerInfo->sv102_disc == SV_NODISC)
        FUNC4(4306);
    else
        FUNC0(StdOut, L"%lu\n", ServerInfo->sv102_disc);

done:
    if (TransportInfo != NULL)
        FUNC2(TransportInfo);

    return 0;
}