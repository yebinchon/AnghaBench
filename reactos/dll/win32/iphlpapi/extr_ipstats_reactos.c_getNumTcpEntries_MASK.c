#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ tei_entity; int /*<<< orphan*/  tei_instance; } ;
typedef  TYPE_1__ TDIEntityID ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PMIB_TCPROW ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  MIB_TCPROW ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ CO_TL_ENTITY ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FILE_READ_DATA ; 
 int /*<<< orphan*/  INFO_CLASS_PROTOCOL ; 
 int /*<<< orphan*/  INFO_TYPE_PROVIDER ; 
 int /*<<< orphan*/  IP_MIB_ARPTABLE_ENTRY_ID ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__**,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 

DWORD FUNC9(void)
{
    DWORD numEntities;
    TDIEntityID *entitySet = NULL;
    HANDLE tcpFile;
    int i, totalNumber = 0;
    NTSTATUS status;
    PMIB_TCPROW IpTcpTable = NULL;
    DWORD returnSize;

    FUNC2("called.\n");

    status = FUNC5( &tcpFile, FILE_READ_DATA );
    if( !FUNC1(status) ) {
        FUNC0("openTcpFile returned 0x%08lx\n", status);
        return 0;
    }

    status = FUNC7( tcpFile, &entitySet, &numEntities );

    for( i = 0; i < numEntities; i++ ) {
        if( entitySet[i].tei_entity == CO_TL_ENTITY &&
	    FUNC4( tcpFile, &entitySet[i] ) ) {

	    status = FUNC8( tcpFile,
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
			FUNC6( IpTcpTable );
			IpTcpTable = NULL;
		}
	}
    }

    FUNC3( tcpFile );
    if( entitySet ) FUNC6( entitySet );
    return totalNumber;
}