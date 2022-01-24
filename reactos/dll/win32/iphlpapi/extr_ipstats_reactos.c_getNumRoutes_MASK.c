#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isnmp ;
struct TYPE_4__ {int ipsi_numroutes; } ;
typedef  int /*<<< orphan*/  TDIEntityID ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_1__ IPSNMPInfo ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FILE_READ_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 

DWORD FUNC10(void)
{
    DWORD numEntities, numRoutes = 0;
    TDIEntityID *entitySet;
    HANDLE tcpFile;
    int i;
    NTSTATUS status;

    FUNC2("called.\n");

    status = FUNC6( &tcpFile, FILE_READ_DATA );
    if( !FUNC1(status) ) {
        FUNC0("openTcpFile returned 0x%08lx\n", status);
        return 0;
    }

    status = FUNC8( tcpFile, &entitySet, &numEntities );
    if( !FUNC1(status) ) {
        FUNC0("tdiGetEntityIDSet returned 0x%08lx\n", status);
        FUNC3( tcpFile );
        return 0;
    }

    for( i = 0; i < numEntities; i++ ) {
        if( FUNC4( tcpFile, &entitySet[i] ) ) {
            IPSNMPInfo isnmp;
            FUNC5( &isnmp, 0, sizeof( isnmp ) );
            status = FUNC9( tcpFile, &entitySet[i], &isnmp );
            if( !FUNC1(status) ) {
                FUNC0("tdiGetMibForIpEntity returned 0x%08lx, for i = %d", status, i);
                numRoutes = 0;
                break;
            }
            numRoutes += isnmp.ipsi_numroutes;
        }
    }

    FUNC2("numRoutes = %lu\n", numRoutes);

    FUNC7( entitySet );
    FUNC3( tcpFile );

    return numRoutes;
}