
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tei_entity; int tei_instance; } ;
typedef TYPE_1__ TDIEntityID ;
typedef int PVOID ;
typedef TYPE_1__* PMIB_TCPROW ;
typedef scalar_t__ NTSTATUS ;
typedef int MIB_TCPROW ;
typedef int HANDLE ;
typedef int DWORD ;


 scalar_t__ CO_TL_ENTITY ;
 int ERR (char*,scalar_t__) ;
 int FILE_READ_DATA ;
 int INFO_CLASS_PROTOCOL ;
 int INFO_TYPE_PROVIDER ;
 int IP_MIB_ARPTABLE_ENTRY_ID ;
 int NT_SUCCESS (scalar_t__) ;
 scalar_t__ STATUS_SUCCESS ;
 int TRACE (char*) ;
 int closeTcpFile (int ) ;
 scalar_t__ hasArp (int ,TYPE_1__*) ;
 scalar_t__ openTcpFile (int *,int ) ;
 int tdiFreeThingSet (TYPE_1__*) ;
 scalar_t__ tdiGetEntityIDSet (int ,TYPE_1__**,int*) ;
 scalar_t__ tdiGetSetOfThings (int ,int ,int ,int ,scalar_t__,int ,int ,int,int *,int*) ;

DWORD getNumTcpEntries(void)
{
    DWORD numEntities;
    TDIEntityID *entitySet = ((void*)0);
    HANDLE tcpFile;
    int i, totalNumber = 0;
    NTSTATUS status;
    PMIB_TCPROW IpTcpTable = ((void*)0);
    DWORD returnSize;

    TRACE("called.\n");

    status = openTcpFile( &tcpFile, FILE_READ_DATA );
    if( !NT_SUCCESS(status) ) {
        ERR("openTcpFile returned 0x%08lx\n", status);
        return 0;
    }

    status = tdiGetEntityIDSet( tcpFile, &entitySet, &numEntities );

    for( i = 0; i < numEntities; i++ ) {
        if( entitySet[i].tei_entity == CO_TL_ENTITY &&
     hasArp( tcpFile, &entitySet[i] ) ) {

     status = tdiGetSetOfThings( tcpFile,
     INFO_CLASS_PROTOCOL,
     INFO_TYPE_PROVIDER,
     IP_MIB_ARPTABLE_ENTRY_ID,
     CO_TL_ENTITY,
     entitySet[i].tei_instance,
     0,
     sizeof(MIB_TCPROW),
     (PVOID *)&IpTcpTable,
     &returnSize );

     if( status == STATUS_SUCCESS ) totalNumber += returnSize;
  if( IpTcpTable ) {
   tdiFreeThingSet( IpTcpTable );
   IpTcpTable = ((void*)0);
  }
 }
    }

    closeTcpFile( tcpFile );
    if( entitySet ) tdiFreeThingSet( entitySet );
    return totalNumber;
}
