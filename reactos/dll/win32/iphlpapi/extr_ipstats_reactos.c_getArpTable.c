
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int dwNumEntries; TYPE_1__* table; } ;
struct TYPE_10__ {int tei_instance; } ;
typedef TYPE_1__ TDIEntityID ;
typedef int PVOID ;
typedef TYPE_2__* PMIB_IPNETTABLE ;
typedef TYPE_1__* PMIB_IPNETROW ;
typedef scalar_t__ NTSTATUS ;
typedef int MIB_IPNETROW ;
typedef int HANDLE ;
typedef int DWORD ;


 int AT_ENTITY ;
 int ERR (char*,scalar_t__) ;
 int FILE_READ_DATA ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int INFO_CLASS_PROTOCOL ;
 int INFO_TYPE_PROVIDER ;
 int IP_MIB_ARPTABLE_ENTRY_ID ;
 int NT_SUCCESS (scalar_t__) ;
 scalar_t__ STATUS_SUCCESS ;
 int TRACE (char*) ;
 int closeTcpFile (int ) ;
 int getNumArpEntries () ;
 scalar_t__ hasArp (int ,TYPE_1__*) ;
 scalar_t__ isInterface (TYPE_1__*) ;
 scalar_t__ openTcpFile (int *,int ) ;
 int tdiFreeThingSet (TYPE_1__*) ;
 scalar_t__ tdiGetEntityIDSet (int ,TYPE_1__**,int*) ;
 scalar_t__ tdiGetSetOfThings (int ,int ,int ,int ,int ,int ,int ,int,int *,int*) ;

PMIB_IPNETTABLE getArpTable(void)
{
    DWORD numEntities, returnSize;
    TDIEntityID *entitySet;
    HANDLE tcpFile;
    int i, totalNumber, TmpIdx, CurrIdx = 0;
    NTSTATUS status;
    PMIB_IPNETTABLE IpArpTable = ((void*)0);
    PMIB_IPNETROW AdapterArpTable = ((void*)0);

    TRACE("called.\n");

    totalNumber = getNumArpEntries();

    status = openTcpFile( &tcpFile, FILE_READ_DATA );
    if( !NT_SUCCESS(status) ) {
        ERR("openTcpFile returned 0x%08lx\n", status);
        return 0;
    }

    IpArpTable = HeapAlloc
 ( GetProcessHeap(), 0,
   sizeof(DWORD) + (sizeof(MIB_IPNETROW) * totalNumber) );
    if (!IpArpTable) {
        closeTcpFile(tcpFile);
        return ((void*)0);
    }

    status = tdiGetEntityIDSet( tcpFile, &entitySet, &numEntities );

    for( i = 0; i < numEntities; i++ ) {
        if( isInterface( &entitySet[i] ) &&
     hasArp( tcpFile, &entitySet[i] ) ) {

     status = tdiGetSetOfThings( tcpFile,
     INFO_CLASS_PROTOCOL,
     INFO_TYPE_PROVIDER,
     IP_MIB_ARPTABLE_ENTRY_ID,
     AT_ENTITY,
     entitySet[i].tei_instance,
     0,
     sizeof(MIB_IPNETROW),
     (PVOID *)&AdapterArpTable,
     &returnSize );

            if( status == STATUS_SUCCESS ) {
                for( TmpIdx = 0; TmpIdx < returnSize; TmpIdx++, CurrIdx++ )
                    IpArpTable->table[CurrIdx] = AdapterArpTable[TmpIdx];
                tdiFreeThingSet( AdapterArpTable );
            }
        }
    }

    closeTcpFile( tcpFile );

    tdiFreeThingSet( entitySet );
    IpArpTable->dwNumEntries = CurrIdx;

    return IpArpTable;
}
