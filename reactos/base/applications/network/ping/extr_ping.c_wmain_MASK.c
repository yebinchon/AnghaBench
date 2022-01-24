#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
struct TYPE_5__ {int Ttl; } ;
struct TYPE_4__ {scalar_t__ ai_addrlen; int /*<<< orphan*/  ai_addr; } ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int Address ; 
 scalar_t__* CanonName ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  ConsoleCtrlHandler ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ Family ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  IDS_PINGING_ADDRESS ; 
 int /*<<< orphan*/  IDS_PINGING_HOSTNAME ; 
 int /*<<< orphan*/  IDS_PING_SIZE ; 
 int /*<<< orphan*/  IDS_WINSOCK_FAIL ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 () ; 
 TYPE_2__ IpOptions ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int PingCount ; 
 int /*<<< orphan*/  PingForever ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int RequestSize ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* Target ; 
 int /*<<< orphan*/  TargetName ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ hIcmpFile ; 

int
FUNC19(int argc, WCHAR *argv[])
{
    WSADATA wsaData;
    ULONG i;
    DWORD StrLen = 46;
    int Status;

    /* Initialize the Console Standard Streams */
    FUNC0();

    IpOptions.Ttl = 128;

    if (!FUNC9(argc, argv))
        return 1;

    if (!FUNC13(ConsoleCtrlHandler, TRUE))
    {
        FUNC2("Failed to set control handler: %lu\n", FUNC4());
        return 1;
    }

    Status = FUNC18(FUNC8(2, 2), &wsaData);
    if (Status != 0)
    {
        FUNC1(StdErr, IDS_WINSOCK_FAIL, Status);
        return 1;
    }

    if (!FUNC12(TargetName))
    {
        FUNC16();
        return 1;
    }

    if (FUNC15(Target->ai_addr, (DWORD)Target->ai_addrlen, NULL, Address, &StrLen) != 0)
    {
        FUNC2("WSAAddressToStringW failed: %d\n", FUNC17());
        FUNC3(Target);
        FUNC16();
        return 1;
    }

    if (Family == AF_INET6)
        hIcmpFile = FUNC5();
    else
        hIcmpFile = FUNC7();


    if (hIcmpFile == INVALID_HANDLE_VALUE)
    {
        FUNC2("IcmpCreateFile failed: %lu\n", FUNC4());
        FUNC3(Target);
        FUNC16();
        return 1;
    }

    if (*CanonName)
        FUNC1(StdOut, IDS_PINGING_HOSTNAME, CanonName, Address);
    else
        FUNC1(StdOut, IDS_PINGING_ADDRESS, Address);

    FUNC1(StdOut, IDS_PING_SIZE, RequestSize);

    FUNC10();

    i = 1;
    while (i < PingCount)
    {
        FUNC14(1000);
        FUNC10();

        if (!PingForever)
            i++;
    }

    FUNC11();

    FUNC6(hIcmpFile);
    FUNC3(Target);
    FUNC16();

    return 0;
}