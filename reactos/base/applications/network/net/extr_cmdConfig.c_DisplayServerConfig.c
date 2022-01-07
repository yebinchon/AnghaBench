
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sv102_hidden; int sv102_disc; int sv102_users; int sv102_version_minor; int sv102_version_major; int sv102_comment; int sv102_name; } ;
struct TYPE_5__ {int svti0_networkaddress; int * svti0_transportname; } ;
typedef TYPE_1__* PSERVER_TRANSPORT_INFO_0 ;
typedef TYPE_2__* PSERVER_INFO_102 ;
typedef int PBYTE ;
typedef scalar_t__ NET_API_STATUS ;
typedef int INT ;
typedef size_t DWORD ;


 int ConPrintf (int ,char*,int ,...) ;
 int ConPuts (int ,char*) ;
 int MAX_PREFERRED_LENGTH ;
 scalar_t__ NERR_Success ;
 int NetApiBufferFree (TYPE_1__*) ;
 scalar_t__ NetServerTransportEnum (int *,int ,int *,int ,size_t*,size_t*,int *) ;
 int PrintMessageString (int) ;
 int PrintPaddedMessageString (int,int) ;
 scalar_t__ SV_HIDDEN ;
 int SV_NODISC ;
 int StdOut ;

__attribute__((used)) static
INT
DisplayServerConfig(
    PSERVER_INFO_102 ServerInfo)
{
    PSERVER_TRANSPORT_INFO_0 TransportInfo = ((void*)0);
    DWORD dwRead, dwTotal, i;
    INT nPaddedLength = 38;
    NET_API_STATUS Status;

    Status = NetServerTransportEnum(((void*)0), 0, (PBYTE*)&TransportInfo,
                                    MAX_PREFERRED_LENGTH,
                                    &dwRead,
                                    &dwTotal,
                                    ((void*)0));
    if (Status != NERR_Success)
        goto done;

    PrintPaddedMessageString(4481, nPaddedLength);
    ConPrintf(StdOut, L"\\\\%s\n", ServerInfo->sv102_name);

    PrintPaddedMessageString(4482, nPaddedLength);
    ConPrintf(StdOut, L"%s\n\n", ServerInfo->sv102_comment);

    PrintPaddedMessageString(4484, nPaddedLength);
    ConPrintf(StdOut, L"%lu.%lu\n",
              ServerInfo->sv102_version_major,
              ServerInfo->sv102_version_minor);

    PrintPaddedMessageString(4489, nPaddedLength);
    ConPuts(StdOut, L"\n");
    for (i = 0; i < dwRead; i++)
    {
        ConPrintf(StdOut, L"      %s (%s)\n",
                  &TransportInfo[i].svti0_transportname[8],
                  TransportInfo[i].svti0_networkaddress);
    }
    ConPuts(StdOut, L"\n");

    PrintPaddedMessageString(4492, nPaddedLength);
    PrintMessageString((ServerInfo->sv102_hidden == SV_HIDDEN) ? 4300 : 4301);
    ConPuts(StdOut, L"\n");

    PrintPaddedMessageString(4506, nPaddedLength);
    ConPrintf(StdOut, L"%lu\n", ServerInfo->sv102_users);

    PrintPaddedMessageString(4511, nPaddedLength);
    ConPuts(StdOut, L"...\n\n");

    PrintPaddedMessageString(4520, nPaddedLength);
    if (ServerInfo->sv102_disc == SV_NODISC)
        PrintMessageString(4306);
    else
        ConPrintf(StdOut, L"%lu\n", ServerInfo->sv102_disc);

done:
    if (TransportInfo != ((void*)0))
        NetApiBufferFree(TransportInfo);

    return 0;
}
