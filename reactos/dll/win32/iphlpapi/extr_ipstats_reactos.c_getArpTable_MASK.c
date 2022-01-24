#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int dwNumEntries; TYPE_1__* table; } ;
struct TYPE_10__ {int /*<<< orphan*/  tei_instance; } ;
typedef  TYPE_1__ TDIEntityID ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_2__* PMIB_IPNETTABLE ;
typedef  TYPE_1__* PMIB_IPNETROW ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  MIB_IPNETROW ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AT_ENTITY ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FILE_READ_DATA ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INFO_CLASS_PROTOCOL ; 
 int /*<<< orphan*/  INFO_TYPE_PROVIDER ; 
 int /*<<< orphan*/  IP_MIB_ARPTABLE_ENTRY_ID ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_1__**,int*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 

PMIB_IPNETTABLE FUNC13(void)
{
    DWORD numEntities, returnSize;
    TDIEntityID *entitySet;
    HANDLE tcpFile;
    int i, totalNumber, TmpIdx, CurrIdx = 0;
    NTSTATUS status;
    PMIB_IPNETTABLE IpArpTable = NULL;
    PMIB_IPNETROW AdapterArpTable = NULL;

    FUNC4("called.\n");

    totalNumber = FUNC6();

    status = FUNC9( &tcpFile, FILE_READ_DATA );
    if( !FUNC3(status) ) {
        FUNC0("openTcpFile returned 0x%08lx\n", status);
        return 0;
    }

    IpArpTable = FUNC2
	( FUNC1(), 0,
	  sizeof(DWORD) + (sizeof(MIB_IPNETROW) * totalNumber) );
    if (!IpArpTable) {
        FUNC5(tcpFile);
        return NULL;
    }

    status = FUNC11( tcpFile, &entitySet, &numEntities );

    for( i = 0; i < numEntities; i++ ) {
        if( FUNC8( &entitySet[i] ) &&
	    FUNC7( tcpFile, &entitySet[i] ) ) {

	    status = FUNC12( tcpFile,
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
                FUNC10( AdapterArpTable );
            }
        }
    }

    FUNC5( tcpFile );

    FUNC10( entitySet );
    IpArpTable->dwNumEntries = CurrIdx;

    return IpArpTable;
}