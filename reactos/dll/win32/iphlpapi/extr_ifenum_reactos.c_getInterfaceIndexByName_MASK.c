#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  if_index; } ;
struct TYPE_6__ {TYPE_1__ ent; } ;
struct TYPE_7__ {TYPE_2__ if_info; } ;
typedef  int /*<<< orphan*/ * PDWORD ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_3__ IFInfo ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_READ_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

DWORD FUNC4(const char *name, PDWORD index)
{
    IFInfo ifInfo;
    HANDLE tcpFile;
    NTSTATUS status = FUNC3( &tcpFile, FILE_READ_DATA );

    if( FUNC0(status) ) {
        status = FUNC2( tcpFile, (char *)name, &ifInfo );

        if( FUNC0(status) ) {
            *index = ifInfo.if_info.ent.if_index;
        }

        FUNC1( tcpFile );
    }

    return status;
}