
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int TcpOffset; int TcpSize; int TOIID; } ;
struct TYPE_12__ {scalar_t__ tei_entity; int dwNumEntries; int tei_instance; } ;
typedef TYPE_1__ TDIEntityID ;
typedef TYPE_1__* PVOID ;
typedef TYPE_1__* PMIB_TCPTABLE ;
typedef scalar_t__ NTSTATUS ;
typedef int HANDLE ;
typedef int DWORD ;
typedef size_t CLASS_TABLE ;


 int Add2Ptr (TYPE_1__*,int) ;
 scalar_t__ CO_TL_ENTITY ;
 int CopyMemory (int ,int ,int) ;
 int ERR (char*,scalar_t__) ;
 int FILE_READ_DATA ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int INFO_CLASS_PROTOCOL ;
 int INFO_TYPE_PROVIDER ;
 int NT_SUCCESS (scalar_t__) ;
 scalar_t__ STATUS_SUCCESS ;
 int TRACE (char*) ;
 TYPE_9__* UdpTcpTableCall ;
 int closeTcpFile (int ) ;
 int getNumTcpEntries () ;
 scalar_t__ hasArp (int ,TYPE_1__*) ;
 scalar_t__ openTcpFile (int *,int ) ;
 int tdiFreeThingSet (TYPE_1__*) ;
 scalar_t__ tdiGetEntityIDSet (int ,TYPE_1__**,int*) ;
 scalar_t__ tdiGetSetOfThings (int ,int ,int ,int ,scalar_t__,int ,int ,int,TYPE_1__**,int*) ;

PVOID getTcpTable(CLASS_TABLE Class)
{
    DWORD numEntities, returnSize;
    TDIEntityID *entitySet;
    HANDLE tcpFile;
    int i, totalNumber, TmpIdx, CurrIdx = 0;
    NTSTATUS status;
    PMIB_TCPTABLE IpTcpTable = ((void*)0);
    PVOID AdapterTcpTable = ((void*)0);

    TRACE("called.\n");

    totalNumber = getNumTcpEntries();

    status = openTcpFile( &tcpFile, FILE_READ_DATA );
    if( !NT_SUCCESS(status) ) {
        ERR("openTcpFile returned 0x%08lx\n", status);
        return 0;
    }

    IpTcpTable = HeapAlloc
 ( GetProcessHeap(), 0,
   UdpTcpTableCall[Class].TcpOffset + (UdpTcpTableCall[Class].TcpSize * totalNumber) );
    if (!IpTcpTable) {
        closeTcpFile(tcpFile);
        return ((void*)0);
    }

    status = tdiGetEntityIDSet( tcpFile, &entitySet, &numEntities );

    for( i = 0; i < numEntities; i++ ) {
        if( entitySet[i].tei_entity == CO_TL_ENTITY &&
     hasArp( tcpFile, &entitySet[i] ) ) {

     status = tdiGetSetOfThings( tcpFile,
     INFO_CLASS_PROTOCOL,
     INFO_TYPE_PROVIDER,
     UdpTcpTableCall[Class].TOIID,
     CO_TL_ENTITY,
     entitySet[i].tei_instance,
     0,
     UdpTcpTableCall[Class].TcpSize,
     &AdapterTcpTable,
     &returnSize );

            if( status == STATUS_SUCCESS ) {
                for( TmpIdx = 0; TmpIdx < returnSize; TmpIdx++, CurrIdx++ )
                    CopyMemory(Add2Ptr(IpTcpTable, UdpTcpTableCall[Class].TcpOffset + UdpTcpTableCall[Class].TcpSize * CurrIdx),
                               Add2Ptr(AdapterTcpTable, UdpTcpTableCall[Class].TcpSize * TmpIdx),
                               UdpTcpTableCall[Class].TcpSize);
                tdiFreeThingSet( AdapterTcpTable );
            }
        }
    }

    closeTcpFile( tcpFile );

    tdiFreeThingSet( entitySet );
    IpTcpTable->dwNumEntries = CurrIdx;

    return IpTcpTable;
}
