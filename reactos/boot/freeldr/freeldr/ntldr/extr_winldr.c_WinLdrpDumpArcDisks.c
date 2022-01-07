
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_9__ {TYPE_4__* Flink; } ;
struct TYPE_13__ {TYPE_1__ ListEntry; int Signature; int CheckSum; int ArcName; } ;
struct TYPE_12__ {struct TYPE_12__* Flink; } ;
struct TYPE_11__ {TYPE_2__* ArcDiskInformation; } ;
struct TYPE_10__ {TYPE_4__ DiskSignatureListHead; } ;
typedef TYPE_3__* PLOADER_PARAMETER_BLOCK ;
typedef TYPE_4__* PLIST_ENTRY ;
typedef TYPE_5__* PARC_DISK_SIGNATURE ;


 int ARC_DISK_SIGNATURE ;
 TYPE_5__* CONTAINING_RECORD (TYPE_4__*,int ,int ) ;
 int ListEntry ;
 int TRACE (char*,int ,int ,int ) ;

VOID
WinLdrpDumpArcDisks(PLOADER_PARAMETER_BLOCK LoaderBlock)
{
    PLIST_ENTRY NextBd;
    PARC_DISK_SIGNATURE ArcDisk;

    NextBd = LoaderBlock->ArcDiskInformation->DiskSignatureListHead.Flink;

    while (NextBd != &LoaderBlock->ArcDiskInformation->DiskSignatureListHead)
    {
        ArcDisk = CONTAINING_RECORD(NextBd, ARC_DISK_SIGNATURE, ListEntry);

        TRACE("ArcDisk %s checksum: 0x%X, signature: 0x%X\n",
            ArcDisk->ArcName, ArcDisk->CheckSum, ArcDisk->Signature);

        NextBd = ArcDisk->ListEntry.Flink;
    }
}
