#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct protocol {int dummy; } ;
struct TYPE_16__ {TYPE_1__* client; int /*<<< orphan*/  rfdesc; int /*<<< orphan*/  name; } ;
struct TYPE_15__ {int /*<<< orphan*/  AdapterIndex; } ;
struct TYPE_14__ {TYPE_6__ DhclientInfo; } ;
struct TYPE_13__ {int Reply; } ;
struct TYPE_12__ {int /*<<< orphan*/  state; } ;
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
 int /*<<< orphan*/  S_INIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 struct protocol* FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  got_one ; 
 int /*<<< orphan*/  FUNC6 (struct protocol*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 

DWORD FUNC8( PipeSendFunc Send, COMM_DHCP_REQ *Req ) {
    COMM_DHCP_REPLY Reply;
    PDHCP_ADAPTER Adapter;
    struct protocol* proto;

    FUNC1();

    Adapter = FUNC0( Req->AdapterIndex );

    Reply.Reply = Adapter ? 1 : 0;

    if( Adapter ) {
        proto = FUNC5( &Adapter->DhclientInfo );
        if (proto)
            FUNC6(proto);

        FUNC4( Adapter->DhclientInfo.name,
                      Adapter->DhclientInfo.rfdesc, got_one,
                      &Adapter->DhclientInfo );

        Adapter->DhclientInfo.client->state = S_INIT;
        FUNC7(&Adapter->DhclientInfo);

        if (AdapterStateChangedEvent != NULL)
            FUNC3(AdapterStateChangedEvent);
    }

    FUNC2();

    return Send( &Reply );
}