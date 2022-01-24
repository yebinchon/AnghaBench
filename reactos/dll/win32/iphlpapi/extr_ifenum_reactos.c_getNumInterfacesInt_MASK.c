#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TDIEntityID ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_READ_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static DWORD FUNC9(BOOL onlyNonLoopback)
{
    DWORD numEntities, numInterfaces = 0;
    TDIEntityID *entitySet;
    HANDLE tcpFile;
    NTSTATUS status;
    int i;

    status = FUNC6( &tcpFile, FILE_READ_DATA );

    if( !FUNC0(status) ) {
        FUNC2("getNumInterfaces: failed %08x\n", status );
        return 0;
    }

    status = FUNC8( tcpFile, &entitySet, &numEntities );

    if( !FUNC0(status) ) {
        FUNC2("getNumInterfaces: failed %08x\n", status );
        FUNC3( tcpFile );
        return 0;
    }

    for( i = 0; i < numEntities; i++ ) {
        if( FUNC4( &entitySet[i] ) &&
            (!onlyNonLoopback ||
             (onlyNonLoopback && !FUNC5( tcpFile, &entitySet[i] ))) )
            numInterfaces++;
    }

    FUNC1("getNumInterfaces: success: %d %d %08x\n",
           onlyNonLoopback, numInterfaces, status );

    FUNC3( tcpFile );

    FUNC7( entitySet );

    return numInterfaces;
}