
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_27__ {int QuadPart; } ;
struct TYPE_26__ {int QuadPart; } ;
struct TYPE_25__ {int QuadPart; } ;
struct TYPE_28__ {TYPE_7__ ActualAvailableAllocationUnits; TYPE_6__ CallerAvailableAllocationUnits; TYPE_5__ TotalAllocationUnits; void* BytesPerSector; void* SectorsPerAllocationUnit; } ;
struct TYPE_23__ {int QuadPart; } ;
struct TYPE_22__ {int QuadPart; } ;
struct TYPE_24__ {TYPE_3__ AvailableAllocationUnits; TYPE_2__ TotalAllocationUnits; void* BytesPerSector; void* SectorsPerAllocationUnit; } ;
struct TYPE_17__ {int attribute; TYPE_8__ fullsize; TYPE_4__ size; } ;
struct TYPE_18__ {int query; int len; TYPE_11__ info; } ;
typedef TYPE_12__ volume_upcall_args ;
struct TYPE_21__ {TYPE_12__ volume; } ;
struct TYPE_19__ {TYPE_15__* state_ref; TYPE_1__ args; } ;
typedef TYPE_13__ nfs41_upcall ;
struct TYPE_29__ {int superblock; } ;
struct TYPE_16__ {TYPE_9__ fh; } ;
struct TYPE_20__ {TYPE_10__ file; } ;


 void* BYTES_PER_SECTOR ;
 int ERROR_INVALID_PARAMETER ;



 int NO_ERROR ;
 void* SECTORS_PER_UNIT ;
 int eprintf (char*,int) ;
 int get_volume_size_info (TYPE_15__*,char*,int *,int *,int *) ;
 int nfs41_superblock_fs_attributes (int ,int *) ;

__attribute__((used)) static int handle_volume(nfs41_upcall *upcall)
{
    volume_upcall_args *args = &upcall->args.volume;
    int status = NO_ERROR;

    switch (args->query) {
    case 128:
        args->len = sizeof(args->info.size);
        args->info.size.SectorsPerAllocationUnit = SECTORS_PER_UNIT;
        args->info.size.BytesPerSector = BYTES_PER_SECTOR;

        status = get_volume_size_info(upcall->state_ref,
            "FileFsSizeInformation",
            &args->info.size.TotalAllocationUnits.QuadPart,
            &args->info.size.AvailableAllocationUnits.QuadPart,
            ((void*)0));
        break;

    case 129:
        args->len = sizeof(args->info.fullsize);
        args->info.fullsize.SectorsPerAllocationUnit = SECTORS_PER_UNIT;
        args->info.fullsize.BytesPerSector = BYTES_PER_SECTOR;

        status = get_volume_size_info(upcall->state_ref,
            "FileFsFullSizeInformation",
            &args->info.fullsize.TotalAllocationUnits.QuadPart,
            &args->info.fullsize.CallerAvailableAllocationUnits.QuadPart,
            &args->info.fullsize.ActualAvailableAllocationUnits.QuadPart);
        break;

    case 130:
        args->len = sizeof(args->info.attribute);
        nfs41_superblock_fs_attributes(upcall->state_ref->file.fh.superblock,
            &args->info.attribute);
        break;

    default:
        eprintf("unhandled fs query class %d\n", args->query);
        status = ERROR_INVALID_PARAMETER;
        break;
    }
    return status;
}
