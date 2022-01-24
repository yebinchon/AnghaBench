#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_7__ {char* Port; int /*<<< orphan*/  DriverName; } ;
struct TYPE_6__ {char* Name; int /*<<< orphan*/ * EntryContext; int /*<<< orphan*/  Flags; } ;
typedef  TYPE_1__ RTL_QUERY_REGISTRY_TABLE ;
typedef  int /*<<< orphan*/  QueryTable ;
typedef  TYPE_2__* PDISKENTRY ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTL_QUERY_REGISTRY_DIRECT ; 
 int /*<<< orphan*/  RTL_REGISTRY_DEVICEMAP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static
VOID
FUNC6(
    PDISKENTRY DiskEntry)
{
    RTL_QUERY_REGISTRY_TABLE QueryTable[2];
    WCHAR KeyName[32];
    NTSTATUS Status;

    FUNC2(&DiskEntry->DriverName,
                         NULL);

    FUNC5(KeyName,
             L"\\Scsi\\Scsi Port %lu",
             DiskEntry->Port);

    FUNC4(&QueryTable,
                  sizeof(QueryTable));

    QueryTable[0].Name = L"Driver";
    QueryTable[0].Flags = RTL_QUERY_REGISTRY_DIRECT;
    QueryTable[0].EntryContext = &DiskEntry->DriverName;

    Status = FUNC3(RTL_REGISTRY_DEVICEMAP,
                                    KeyName,
                                    QueryTable,
                                    NULL,
                                    NULL);
    if (!FUNC1(Status))
    {
        FUNC0("RtlQueryRegistryValues() failed (Status %lx)\n", Status);
    }
}