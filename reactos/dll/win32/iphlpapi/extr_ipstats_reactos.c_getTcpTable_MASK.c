#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int TcpOffset; int TcpSize; int /*<<< orphan*/  TOIID; } ;
struct TYPE_12__ {scalar_t__ tei_entity; int dwNumEntries; int /*<<< orphan*/  tei_instance; } ;
typedef  TYPE_1__ TDIEntityID ;
typedef  TYPE_1__* PVOID ;
typedef  TYPE_1__* PMIB_TCPTABLE ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  size_t CLASS_TABLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ CO_TL_ENTITY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FILE_READ_DATA ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INFO_CLASS_PROTOCOL ; 
 int /*<<< orphan*/  INFO_TYPE_PROVIDER ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_9__* UdpTcpTableCall ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_1__**,int*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__**,int*) ; 

PVOID FUNC14(CLASS_TABLE Class)
{
    DWORD numEntities, returnSize;
    TDIEntityID *entitySet;
    HANDLE tcpFile;
    int i, totalNumber, TmpIdx, CurrIdx = 0;
    NTSTATUS status;
    PMIB_TCPTABLE IpTcpTable = NULL;
    PVOID AdapterTcpTable = NULL;

    FUNC6("called.\n");

    totalNumber = FUNC8();

    status = FUNC10( &tcpFile, FILE_READ_DATA );
    if( !FUNC5(status) ) {
        FUNC2("openTcpFile returned 0x%08lx\n", status);
        return 0;
    }

    IpTcpTable = FUNC4
	( FUNC3(), 0,
	  UdpTcpTableCall[Class].TcpOffset + (UdpTcpTableCall[Class].TcpSize * totalNumber) );
    if (!IpTcpTable) {
        FUNC7(tcpFile);
        return NULL;
    }

    status = FUNC12( tcpFile, &entitySet, &numEntities );

    for( i = 0; i < numEntities; i++ ) {
        if( entitySet[i].tei_entity == CO_TL_ENTITY &&
	    FUNC9( tcpFile, &entitySet[i] ) ) {

	    status = FUNC13( tcpFile,
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
                    FUNC1(FUNC0(IpTcpTable, UdpTcpTableCall[Class].TcpOffset + UdpTcpTableCall[Class].TcpSize * CurrIdx),
                               FUNC0(AdapterTcpTable, UdpTcpTableCall[Class].TcpSize * TmpIdx),
                               UdpTcpTableCall[Class].TcpSize);
                FUNC11( AdapterTcpTable );
            }
        }
    }

    FUNC7( tcpFile );

    FUNC11( entitySet );
    IpTcpTable->dwNumEntries = CurrIdx;

    return IpTcpTable;
}