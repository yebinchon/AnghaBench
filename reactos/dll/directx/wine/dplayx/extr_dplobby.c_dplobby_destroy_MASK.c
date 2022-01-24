#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* DebugInfo; } ;
struct TYPE_7__ {TYPE_5__ lock; int /*<<< orphan*/  msgs; scalar_t__ msgtid; } ;
struct TYPE_6__ {scalar_t__* Spare; } ;
typedef  TYPE_2__ IDirectPlayLobbyImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  LPDPLMSG ; 
 int /*<<< orphan*/  cbDeleteElemFromHeap ; 
 int /*<<< orphan*/  msgs ; 

__attribute__((used)) static void FUNC5(IDirectPlayLobbyImpl *obj)
{
    if ( obj->msgtid )
        FUNC2( "Should kill the msg thread\n" );

    FUNC0( obj->msgs, msgs, LPDPLMSG, cbDeleteElemFromHeap );
    obj->lock.DebugInfo->Spare[0] = 0;
    FUNC1( &obj->lock );
    FUNC4( FUNC3(), 0, obj );
}