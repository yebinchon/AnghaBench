#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sServerAddress ;
typedef  int /*<<< orphan*/  nonBlockingOption ;
typedef  int /*<<< orphan*/  _u8 ;
typedef  int /*<<< orphan*/  _u16 ;
typedef  scalar_t__ _i16 ;
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct TYPE_6__ {int NonblockingEnabled; } ;
typedef  TYPE_2__ SlSockNonblocking_t ;
typedef  int /*<<< orphan*/  SlSockAddr_t ;
typedef  TYPE_3__ SlSockAddrIn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SL_AF_INET ; 
 int /*<<< orphan*/  SL_INADDR_ANY ; 
 int /*<<< orphan*/  SL_IPPROTO_IP ; 
 int /*<<< orphan*/  SL_SOCK_STREAM ; 
 scalar_t__ SL_SOC_OK ; 
 int /*<<< orphan*/  SL_SOL_SOCKET ; 
 int /*<<< orphan*/  SL_SO_NONBLOCKING ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8 (_i16 *sd, _u16 port, _u8 backlog) {
    SlSockNonblocking_t nonBlockingOption;
    SlSockAddrIn_t sServerAddress;
    _i16 _sd;
    _i16 result;

    // Open a socket for ftp data listen
    FUNC0 ((*sd = FUNC7(SL_AF_INET, SL_SOCK_STREAM, SL_IPPROTO_IP)) > 0);
    _sd = *sd;

    if (_sd > 0) {
        // add the new socket to the network administration
        FUNC1(_sd, false);

        // Enable non-blocking mode
        nonBlockingOption.NonblockingEnabled = 1;
        FUNC0 ((result = FUNC6(_sd, SL_SOL_SOCKET, SL_SO_NONBLOCKING, &nonBlockingOption, sizeof(nonBlockingOption))) == SL_SOC_OK);

        // Bind the socket to a port number
        sServerAddress.sin_family = SL_AF_INET;
        sServerAddress.sin_addr.s_addr = SL_INADDR_ANY;
        sServerAddress.sin_port = FUNC4(port);

        FUNC0 ((result |= FUNC3(_sd, (const SlSockAddr_t *)&sServerAddress, sizeof(sServerAddress))) == SL_SOC_OK);

        // Start listening
        FUNC0 ((result |= FUNC5 (_sd, backlog)) == SL_SOC_OK);

        if (result == SL_SOC_OK) {
            return true;
        }
        FUNC2(sd);
    }
    return false;
}