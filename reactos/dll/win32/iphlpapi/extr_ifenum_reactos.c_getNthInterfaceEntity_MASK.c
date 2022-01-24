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
typedef  int NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int STATUS_SUCCESS ; 
 int STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__**,int*) ; 

DWORD FUNC6( HANDLE tcpFile, DWORD index, TDIEntityID *ent ) {
    DWORD numEntities = 0;
    DWORD numInterfaces = 0;
    TDIEntityID *entitySet = 0;
    NTSTATUS status = FUNC5( tcpFile, &entitySet, &numEntities );
    int i;

    if( !FUNC0(status) )
        return status;

    for( i = 0; i < numEntities; i++ ) {
        if( FUNC2( &entitySet[i] ) ) {
            if( numInterfaces == index ) break;
            else numInterfaces++;
        }
    }

    FUNC1("Index %d is entity #%d - %04x:%08x\n", index, i,
           entitySet[i].tei_entity, entitySet[i].tei_instance );

    if( numInterfaces == index && i < numEntities ) {
        FUNC3( ent, &entitySet[i], sizeof(*ent) );
        FUNC4( entitySet );
        return STATUS_SUCCESS;
    } else {
        FUNC4( entitySet );
        return STATUS_UNSUCCESSFUL;
    }
}