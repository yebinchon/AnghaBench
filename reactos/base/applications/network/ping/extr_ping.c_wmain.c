
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WSADATA ;
typedef int WCHAR ;
typedef int ULONG ;
struct TYPE_5__ {int Ttl; } ;
struct TYPE_4__ {scalar_t__ ai_addrlen; int ai_addr; } ;
typedef int DWORD ;


 scalar_t__ AF_INET6 ;
 int Address ;
 scalar_t__* CanonName ;
 int ConInitStdStreams () ;
 int ConResPrintf (int ,int ,int,...) ;
 int ConsoleCtrlHandler ;
 int DPRINT (char*,int ) ;
 scalar_t__ Family ;
 int FreeAddrInfoW (TYPE_1__*) ;
 int GetLastError () ;
 int IDS_PINGING_ADDRESS ;
 int IDS_PINGING_HOSTNAME ;
 int IDS_PING_SIZE ;
 int IDS_WINSOCK_FAIL ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ Icmp6CreateFile () ;
 int IcmpCloseHandle (scalar_t__) ;
 scalar_t__ IcmpCreateFile () ;
 TYPE_2__ IpOptions ;
 int MAKEWORD (int,int) ;
 int ParseCmdLine (int,int **) ;
 int Ping () ;
 int PingCount ;
 int PingForever ;
 int PrintStats () ;
 int RequestSize ;
 int ResolveTarget (int ) ;
 int SetConsoleCtrlHandler (int ,int ) ;
 int Sleep (int) ;
 int StdErr ;
 int StdOut ;
 int TRUE ;
 TYPE_1__* Target ;
 int TargetName ;
 scalar_t__ WSAAddressToStringW (int ,int,int *,int,int*) ;
 int WSACleanup () ;
 int WSAGetLastError () ;
 int WSAStartup (int ,int *) ;
 scalar_t__ hIcmpFile ;

int
wmain(int argc, WCHAR *argv[])
{
    WSADATA wsaData;
    ULONG i;
    DWORD StrLen = 46;
    int Status;


    ConInitStdStreams();

    IpOptions.Ttl = 128;

    if (!ParseCmdLine(argc, argv))
        return 1;

    if (!SetConsoleCtrlHandler(ConsoleCtrlHandler, TRUE))
    {
        DPRINT("Failed to set control handler: %lu\n", GetLastError());
        return 1;
    }

    Status = WSAStartup(MAKEWORD(2, 2), &wsaData);
    if (Status != 0)
    {
        ConResPrintf(StdErr, IDS_WINSOCK_FAIL, Status);
        return 1;
    }

    if (!ResolveTarget(TargetName))
    {
        WSACleanup();
        return 1;
    }

    if (WSAAddressToStringW(Target->ai_addr, (DWORD)Target->ai_addrlen, ((void*)0), Address, &StrLen) != 0)
    {
        DPRINT("WSAAddressToStringW failed: %d\n", WSAGetLastError());
        FreeAddrInfoW(Target);
        WSACleanup();
        return 1;
    }

    if (Family == AF_INET6)
        hIcmpFile = Icmp6CreateFile();
    else
        hIcmpFile = IcmpCreateFile();


    if (hIcmpFile == INVALID_HANDLE_VALUE)
    {
        DPRINT("IcmpCreateFile failed: %lu\n", GetLastError());
        FreeAddrInfoW(Target);
        WSACleanup();
        return 1;
    }

    if (*CanonName)
        ConResPrintf(StdOut, IDS_PINGING_HOSTNAME, CanonName, Address);
    else
        ConResPrintf(StdOut, IDS_PINGING_ADDRESS, Address);

    ConResPrintf(StdOut, IDS_PING_SIZE, RequestSize);

    Ping();

    i = 1;
    while (i < PingCount)
    {
        Sleep(1000);
        Ping();

        if (!PingForever)
            i++;
    }

    PrintStats();

    IcmpCloseHandle(hIcmpFile);
    FreeAddrInfoW(Target);
    WSACleanup();

    return 0;
}
