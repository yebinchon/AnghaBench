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
typedef  int /*<<< orphan*/  PDWORD ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IFInfo ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_READ_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

DWORD FUNC5(DWORD index, PDWORD len, PBYTE addr,
 PDWORD type)
{
    HANDLE tcpFile;
    IFInfo info;
    NTSTATUS status = FUNC4( &tcpFile, FILE_READ_DATA );

    if( FUNC0(status) ) {
        status = FUNC2( tcpFile, index, &info );
        if( FUNC0(status) )
            FUNC3( &info, len, addr, type );
        FUNC1( tcpFile );
    }

    return status;
}