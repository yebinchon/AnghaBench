#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  tei_instance; int /*<<< orphan*/  tei_entity; } ;
typedef  TYPE_1__ TDIEntityID ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__**,int*) ; 

NTSTATUS FUNC6( HANDLE tcpFile, DWORD index, TDIEntityID *ent ) {
    DWORD numEntities = 0;
    DWORD numRoutes = 0;
    TDIEntityID *entitySet = 0;
    NTSTATUS status = FUNC5( tcpFile, &entitySet, &numEntities );
    int i;

    if( !FUNC0(status) )
        return status;

    for( i = 0; i < numEntities; i++ ) {
        if( FUNC2( tcpFile, &entitySet[i] ) ) {
            FUNC1("Entity %d is an IP Entity\n", i);
            if( numRoutes == index ) break;
            else numRoutes++;
        }
    }

    if( numRoutes == index && i < numEntities ) {
        FUNC1("Index %lu is entity #%d - %04x:%08x\n", index, i,
              entitySet[i].tei_entity, entitySet[i].tei_instance);
        FUNC3( ent, &entitySet[i], sizeof(*ent) );
        FUNC4( entitySet );
        return STATUS_SUCCESS;
    } else {
        FUNC4( entitySet );
        return STATUS_UNSUCCESSFUL;
    }
}