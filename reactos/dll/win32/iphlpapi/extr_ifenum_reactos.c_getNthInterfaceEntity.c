
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int tei_instance; int tei_entity; } ;
typedef TYPE_1__ TDIEntityID ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int DWORD ;


 int NT_SUCCESS (int) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int TRACE (char*,int,int,int ,int ) ;
 scalar_t__ isInterface (TYPE_1__*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int tdiFreeThingSet (TYPE_1__*) ;
 int tdiGetEntityIDSet (int ,TYPE_1__**,int*) ;

DWORD getNthInterfaceEntity( HANDLE tcpFile, DWORD index, TDIEntityID *ent ) {
    DWORD numEntities = 0;
    DWORD numInterfaces = 0;
    TDIEntityID *entitySet = 0;
    NTSTATUS status = tdiGetEntityIDSet( tcpFile, &entitySet, &numEntities );
    int i;

    if( !NT_SUCCESS(status) )
        return status;

    for( i = 0; i < numEntities; i++ ) {
        if( isInterface( &entitySet[i] ) ) {
            if( numInterfaces == index ) break;
            else numInterfaces++;
        }
    }

    TRACE("Index %d is entity #%d - %04x:%08x\n", index, i,
           entitySet[i].tei_entity, entitySet[i].tei_instance );

    if( numInterfaces == index && i < numEntities ) {
        memcpy( ent, &entitySet[i], sizeof(*ent) );
        tdiFreeThingSet( entitySet );
        return STATUS_SUCCESS;
    } else {
        tdiFreeThingSet( entitySet );
        return STATUS_UNSUCCESSFUL;
    }
}
