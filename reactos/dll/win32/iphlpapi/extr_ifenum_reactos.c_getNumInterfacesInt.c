
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TDIEntityID ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int FILE_READ_DATA ;
 int NT_SUCCESS (int ) ;
 int TRACE (char*,scalar_t__,int,int ) ;
 int WARN (char*,int ) ;
 int closeTcpFile (int ) ;
 scalar_t__ isInterface (int *) ;
 int isLoopback (int ,int *) ;
 int openTcpFile (int *,int ) ;
 int tdiFreeThingSet (int *) ;
 int tdiGetEntityIDSet (int ,int **,int*) ;

__attribute__((used)) static DWORD getNumInterfacesInt(BOOL onlyNonLoopback)
{
    DWORD numEntities, numInterfaces = 0;
    TDIEntityID *entitySet;
    HANDLE tcpFile;
    NTSTATUS status;
    int i;

    status = openTcpFile( &tcpFile, FILE_READ_DATA );

    if( !NT_SUCCESS(status) ) {
        WARN("getNumInterfaces: failed %08x\n", status );
        return 0;
    }

    status = tdiGetEntityIDSet( tcpFile, &entitySet, &numEntities );

    if( !NT_SUCCESS(status) ) {
        WARN("getNumInterfaces: failed %08x\n", status );
        closeTcpFile( tcpFile );
        return 0;
    }

    for( i = 0; i < numEntities; i++ ) {
        if( isInterface( &entitySet[i] ) &&
            (!onlyNonLoopback ||
             (onlyNonLoopback && !isLoopback( tcpFile, &entitySet[i] ))) )
            numInterfaces++;
    }

    TRACE("getNumInterfaces: success: %d %d %08x\n",
           onlyNonLoopback, numInterfaces, status );

    closeTcpFile( tcpFile );

    tdiFreeThingSet( entitySet );

    return numInterfaces;
}
