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
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IFInfo ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

NTSTATUS FUNC4(HANDLE tcpFile,
                             char *name,
                             DWORD index,
                             IFInfo *ifInfo) {
    NTSTATUS status =
        name ?
        FUNC3( tcpFile, name, ifInfo ) :
        FUNC2( tcpFile, index, ifInfo );

    if (!FUNC1(status)) {
        FUNC0("getIPAddrEntryForIf returning %lx\n", status);
    }

    return status;
}