
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isnmp ;
struct TYPE_4__ {int ipsi_numroutes; } ;
typedef int TDIEntityID ;
typedef int NTSTATUS ;
typedef TYPE_1__ IPSNMPInfo ;
typedef int HANDLE ;
typedef int DWORD ;


 int ERR (char*,int ,...) ;
 int FILE_READ_DATA ;
 int NT_SUCCESS (int ) ;
 int TRACE (char*,...) ;
 int closeTcpFile (int ) ;
 scalar_t__ isIpEntity (int ,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int openTcpFile (int *,int ) ;
 int tdiFreeThingSet (int *) ;
 int tdiGetEntityIDSet (int ,int **,int*) ;
 int tdiGetMibForIpEntity (int ,int *,TYPE_1__*) ;

DWORD getNumRoutes(void)
{
    DWORD numEntities, numRoutes = 0;
    TDIEntityID *entitySet;
    HANDLE tcpFile;
    int i;
    NTSTATUS status;

    TRACE("called.\n");

    status = openTcpFile( &tcpFile, FILE_READ_DATA );
    if( !NT_SUCCESS(status) ) {
        ERR("openTcpFile returned 0x%08lx\n", status);
        return 0;
    }

    status = tdiGetEntityIDSet( tcpFile, &entitySet, &numEntities );
    if( !NT_SUCCESS(status) ) {
        ERR("tdiGetEntityIDSet returned 0x%08lx\n", status);
        closeTcpFile( tcpFile );
        return 0;
    }

    for( i = 0; i < numEntities; i++ ) {
        if( isIpEntity( tcpFile, &entitySet[i] ) ) {
            IPSNMPInfo isnmp;
            memset( &isnmp, 0, sizeof( isnmp ) );
            status = tdiGetMibForIpEntity( tcpFile, &entitySet[i], &isnmp );
            if( !NT_SUCCESS(status) ) {
                ERR("tdiGetMibForIpEntity returned 0x%08lx, for i = %d", status, i);
                numRoutes = 0;
                break;
            }
            numRoutes += isnmp.ipsi_numroutes;
        }
    }

    TRACE("numRoutes = %lu\n", numRoutes);

    tdiFreeThingSet( entitySet );
    closeTcpFile( tcpFile );

    return numRoutes;
}
