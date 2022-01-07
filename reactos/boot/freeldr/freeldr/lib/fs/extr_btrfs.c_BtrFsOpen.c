
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int pbtrfs_file_info ;
struct TYPE_8__ {int size; } ;
struct TYPE_6__ {scalar_t__ position; int inr; TYPE_4__ inode; } ;
typedef TYPE_1__ btrfs_file_info ;
typedef int ULONG ;
struct TYPE_7__ {int root_dirid; } ;
struct TYPE_9__ {TYPE_3__ FsRoot; } ;
typedef scalar_t__ OPENMODE ;
typedef int CHAR ;
typedef int ARC_STATUS ;


 scalar_t__ BTRFS_FT_REG_FILE ;
 TYPE_5__* BtrFsInfo ;
 int EACCES ;
 int EISDIR ;
 int ENOENT ;
 int ENOMEM ;
 int ESUCCESS ;
 int FrLdrTempAlloc (int,int ) ;
 int FsSetDeviceSpecific (int ,int ) ;
 int INVALID_INODE ;
 scalar_t__ OpenReadOnly ;
 int TAG_BTRFS_FILE ;
 int TRACE (char*,int ,...) ;
 int btrfs_lookup_path (TYPE_3__*,int ,int *,scalar_t__*,TYPE_4__*,int) ;
 int memcpy (int ,TYPE_1__*,int) ;

ARC_STATUS BtrFsOpen(CHAR *Path, OPENMODE OpenMode, ULONG *FileId)
{
    u64 inr;
    u8 type;

    btrfs_file_info temp_file_info;
    pbtrfs_file_info phandle;

    TRACE("BtrFsOpen %s\n", Path);

    if (OpenMode != OpenReadOnly)
        return EACCES;

    inr = btrfs_lookup_path(&BtrFsInfo->FsRoot, BtrFsInfo->FsRoot.root_dirid, Path, &type, &temp_file_info.inode, 40);

    if (inr == INVALID_INODE)
    {
        TRACE("Cannot lookup file %s\n", Path);
        return ENOENT;
    }

    if (type != BTRFS_FT_REG_FILE)
    {
        TRACE("Not a regular file: %s\n", Path);
        return EISDIR;
    }

    TRACE("found inode inr=%llu size=%llu\n", inr, temp_file_info.inode.size);

    temp_file_info.inr = inr;
    temp_file_info.position = 0;

    phandle = FrLdrTempAlloc(sizeof(btrfs_file_info), TAG_BTRFS_FILE);
    if (!phandle)
        return ENOMEM;

    memcpy(phandle, &temp_file_info, sizeof(btrfs_file_info));

    FsSetDeviceSpecific(*FileId, phandle);
    return ESUCCESS;
}
