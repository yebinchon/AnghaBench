#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  if_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  bDescr; int /*<<< orphan*/ * wszName; } ;
typedef  TYPE_1__* PMIB_IFROW ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_2__ IFInfo ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_READ_DATA ; 
 size_t MAX_INTERFACE_NAME_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

DWORD FUNC6(const char *name, PMIB_IFROW entry)
{
    HANDLE tcpFile;
    IFInfo info;
    NTSTATUS status = FUNC5( &tcpFile, FILE_READ_DATA );

    FUNC1("Called.\n");

    if( FUNC0(status) ) {
        status = FUNC3( tcpFile, (char *)name, &info );

        if( FUNC0(status) ) {
            FUNC4( &entry->wszName[MAX_INTERFACE_NAME_LEN],
                    &info.if_info,
                    sizeof(info.if_info) );
        }

        FUNC1("entry->bDescr = %s\n", entry->bDescr);

        FUNC2( tcpFile );
    }

    return status;
}