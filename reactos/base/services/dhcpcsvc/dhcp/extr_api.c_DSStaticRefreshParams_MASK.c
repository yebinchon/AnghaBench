#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct protocol {int dummy; } ;
struct TYPE_18__ {scalar_t__ dwForwardNextHop; } ;
struct TYPE_13__ {int /*<<< orphan*/  Netmask; int /*<<< orphan*/  IPAddress; } ;
struct TYPE_14__ {TYPE_2__ StaticRefreshParams; } ;
struct TYPE_17__ {int /*<<< orphan*/  AdapterIndex; TYPE_3__ Body; } ;
struct TYPE_12__ {int /*<<< orphan*/  state; } ;
struct TYPE_16__ {int /*<<< orphan*/  NteInstance; scalar_t__ NteContext; int /*<<< orphan*/  DhclientInfo; TYPE_1__ DhclientState; TYPE_8__ RouterMib; } ;
struct TYPE_15__ {int Reply; } ;
typedef  int /*<<< orphan*/  (* PipeSendFunc ) (TYPE_4__*) ;
typedef  TYPE_5__* PDHCP_ADAPTER ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_6__ COMM_DHCP_REQ ;
typedef  TYPE_4__ COMM_DHCP_REPLY ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * AdapterStateChangedEvent ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_STATIC ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct protocol* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct protocol*) ; 

DWORD FUNC10( PipeSendFunc Send, COMM_DHCP_REQ *Req ) {
    NTSTATUS Status;
    COMM_DHCP_REPLY Reply;
    PDHCP_ADAPTER Adapter;
    struct protocol* proto;

    FUNC2();

    Adapter = FUNC0( Req->AdapterIndex );

    Reply.Reply = Adapter ? 1 : 0;

    if( Adapter ) {
        if (Adapter->NteContext)
        {
            FUNC4( Adapter->NteContext );
            Adapter->NteContext = 0;
        }
        if (Adapter->RouterMib.dwForwardNextHop)
        {
            FUNC5( &Adapter->RouterMib );
            Adapter->RouterMib.dwForwardNextHop = 0;
        }
        
        Adapter->DhclientState.state = S_STATIC;
        proto = FUNC8( &Adapter->DhclientInfo );
        if (proto)
            FUNC9(proto);
        Status = FUNC1( Req->Body.StaticRefreshParams.IPAddress,
                               Req->Body.StaticRefreshParams.Netmask,
                               Req->AdapterIndex,
                               &Adapter->NteContext,
                               &Adapter->NteInstance );
        Reply.Reply = FUNC6(Status);

        if (AdapterStateChangedEvent != NULL)
            FUNC7(AdapterStateChangedEvent);
    }

    FUNC3();

    return Send( &Reply );
}