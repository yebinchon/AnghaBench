#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* client; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  state; int /*<<< orphan*/ * config; } ;
struct TYPE_8__ {scalar_t__ bDescr; } ;
struct TYPE_12__ {TYPE_4__ DhclientInfo; TYPE_2__ DhclientState; TYPE_1__ IfMib; int /*<<< orphan*/  DhclientConfig; } ;
struct TYPE_10__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_5__* PDHCP_ADAPTER ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ERROR_SUCCESS ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int FUNC3 (scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  S_INIT ; 
 int /*<<< orphan*/  S_STATIC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

BOOL FUNC5( PDHCP_ADAPTER Adapter ) {
    HKEY AdapterKey;
    DWORD Error = ERROR_SUCCESS, DhcpEnabled, Length = sizeof(DWORD);

    Adapter->DhclientState.config = &Adapter->DhclientConfig;
    FUNC4(Adapter->DhclientInfo.name, (char*)Adapter->IfMib.bDescr,
            sizeof(Adapter->DhclientInfo.name));

    AdapterKey = FUNC2( Adapter );
    if( AdapterKey )
    {
        Error = FUNC3(AdapterKey, "EnableDHCP", NULL, NULL, (LPBYTE)&DhcpEnabled, &Length);

        if (Error != ERROR_SUCCESS || Length != sizeof(DWORD))
            DhcpEnabled = 1;

        FUNC0(AdapterKey);
    }
    else
    {
        /* DHCP enabled by default */
        DhcpEnabled = 1;
    }           

    if( !DhcpEnabled ) {
        /* Non-automatic case */
        FUNC1("DHCPCSVC: Adapter Name: [%s] (static)\n", Adapter->DhclientInfo.name);

        Adapter->DhclientState.state = S_STATIC;
    } else {
        /* Automatic case */
        FUNC1("DHCPCSVC: Adapter Name: [%s] (dynamic)\n", Adapter->DhclientInfo.name);

	Adapter->DhclientInfo.client->state = S_INIT;
    }

    return TRUE;
}