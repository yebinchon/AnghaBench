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
struct iaddr {int len; int /*<<< orphan*/  iabuf; } ;
struct client_lease {TYPE_2__* options; } ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_5__ {char* name; } ;
struct TYPE_7__ {TYPE_1__ DhclientInfo; } ;
struct TYPE_6__ {int len; scalar_t__ data; } ;
typedef  TYPE_3__* PDHCP_ADAPTER ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  IP_ADDRESS_STRING ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  char CHAR ;

/* Variables and functions */
 size_t DHO_DOMAIN_NAME_SERVERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 char* FUNC8 (struct iaddr) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*) ; 

void FUNC11( PDHCP_ADAPTER Adapter, struct client_lease *new_lease ) {
    CHAR Buffer[200] = "SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters\\Interfaces\\";
    HKEY RegKey;

    FUNC9(Buffer, Adapter->DhclientInfo.name);
    if (FUNC3(HKEY_LOCAL_MACHINE, Buffer, 0, KEY_WRITE, &RegKey ) != ERROR_SUCCESS)
        return;


    if( new_lease->options[DHO_DOMAIN_NAME_SERVERS].len ) {

        struct iaddr nameserver;
        char *nsbuf;
        int i, addrs =
            new_lease->options[DHO_DOMAIN_NAME_SERVERS].len / sizeof(ULONG);

        nsbuf = FUNC6( addrs * sizeof(IP_ADDRESS_STRING) );

        if( nsbuf) {
            nsbuf[0] = 0;
            for( i = 0; i < addrs; i++ ) {
                nameserver.len = sizeof(ULONG);
                FUNC7( nameserver.iabuf,
                        new_lease->options[DHO_DOMAIN_NAME_SERVERS].data +
                        (i * sizeof(ULONG)), sizeof(ULONG) );
                FUNC9( nsbuf, FUNC8(nameserver) );
                if( i != addrs-1 ) FUNC9( nsbuf, "," );
            }

            FUNC0(MID_TRACE,("Setting DhcpNameserver: %s\n", nsbuf));

            FUNC4( RegKey, "DhcpNameServer", 0, REG_SZ,
                           (LPBYTE)nsbuf, FUNC10(nsbuf) + 1 );
            FUNC5( nsbuf );
        }

    } else {
            FUNC2( RegKey, L"DhcpNameServer" );
    }

    FUNC1( RegKey );

}