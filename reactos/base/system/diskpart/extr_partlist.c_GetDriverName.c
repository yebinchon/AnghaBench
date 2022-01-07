
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
struct TYPE_7__ {char* Port; int DriverName; } ;
struct TYPE_6__ {char* Name; int * EntryContext; int Flags; } ;
typedef TYPE_1__ RTL_QUERY_REGISTRY_TABLE ;
typedef int QueryTable ;
typedef TYPE_2__* PDISKENTRY ;
typedef int NTSTATUS ;


 int DPRINT1 (char*,int ) ;
 int NT_SUCCESS (int ) ;
 int RTL_QUERY_REGISTRY_DIRECT ;
 int RTL_REGISTRY_DEVICEMAP ;
 int RtlInitUnicodeString (int *,int *) ;
 int RtlQueryRegistryValues (int ,int *,TYPE_1__*,int *,int *) ;
 int RtlZeroMemory (TYPE_1__**,int) ;
 int swprintf (int *,char*,char*) ;

__attribute__((used)) static
VOID
GetDriverName(
    PDISKENTRY DiskEntry)
{
    RTL_QUERY_REGISTRY_TABLE QueryTable[2];
    WCHAR KeyName[32];
    NTSTATUS Status;

    RtlInitUnicodeString(&DiskEntry->DriverName,
                         ((void*)0));

    swprintf(KeyName,
             L"\\Scsi\\Scsi Port %lu",
             DiskEntry->Port);

    RtlZeroMemory(&QueryTable,
                  sizeof(QueryTable));

    QueryTable[0].Name = L"Driver";
    QueryTable[0].Flags = RTL_QUERY_REGISTRY_DIRECT;
    QueryTable[0].EntryContext = &DiskEntry->DriverName;

    Status = RtlQueryRegistryValues(RTL_REGISTRY_DEVICEMAP,
                                    KeyName,
                                    QueryTable,
                                    ((void*)0),
                                    ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("RtlQueryRegistryValues() failed (Status %lx)\n", Status);
    }
}
