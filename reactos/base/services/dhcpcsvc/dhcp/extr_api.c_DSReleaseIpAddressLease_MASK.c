#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct protocol {int dummy; } ;
struct TYPE_16__ {scalar_t__ dwForwardNextHop; } ;
struct TYPE_15__ {TYPE_1__* client; } ;
struct TYPE_14__ {int /*<<< orphan*/  AdapterIndex; } ;
struct TYPE_13__ {TYPE_6__ DhclientInfo; TYPE_7__ RouterMib; scalar_t__ NteContext; } ;
struct TYPE_12__ {int Reply; } ;
struct TYPE_11__ {int /*<<< orphan*/  state; int /*<<< orphan*/ * active; } ;
typedef  int /*<<< orphan*/  (* PipeSendFunc ) (TYPE_2__*) ;
typedef  TYPE_3__* PDHCP_ADAPTER ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_4__ COMM_DHCP_REQ ;
typedef  TYPE_2__ COMM_DHCP_REPLY ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * AdapterStateChangedEvent ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  S_INIT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct protocol* FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (struct protocol*) ; 

DWORD FUNC8( PipeSendFunc Send, COMM_DHCP_REQ *Req ) {
    COMM_DHCP_REPLY Reply;
    PDHCP_ADAPTER Adapter;
    struct protocol* proto;

    FUNC1();

    Adapter = FUNC0( Req->AdapterIndex );

    Reply.Reply = Adapter ? 1 : 0;

    if( Adapter ) {
        if (Adapter->NteContext)
        {
            FUNC3( Adapter->NteContext );
            Adapter->NteContext = 0;
        }
        if (Adapter->RouterMib.dwForwardNextHop)
        {
            FUNC4( &Adapter->RouterMib );
            Adapter->RouterMib.dwForwardNextHop = 0;
        }

        proto = FUNC6( &Adapter->DhclientInfo );
        if (proto)
           FUNC7(proto);

        Adapter->DhclientInfo.client->active = NULL;
        Adapter->DhclientInfo.client->state = S_INIT;

        if (AdapterStateChangedEvent != NULL)
            FUNC5(AdapterStateChangedEvent);
    }

    FUNC2();

    return Send( &Reply );
}