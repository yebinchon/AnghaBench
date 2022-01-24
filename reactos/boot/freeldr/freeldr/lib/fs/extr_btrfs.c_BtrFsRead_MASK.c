#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  TYPE_2__* pbtrfs_file_info ;
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ ULONG ;
struct TYPE_7__ {int /*<<< orphan*/  FsRoot; } ;
struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_6__ {int /*<<< orphan*/  position; int /*<<< orphan*/  inr; TYPE_1__ inode; } ;
typedef  int /*<<< orphan*/  ARC_STATUS ;

/* Variables and functions */
 TYPE_4__* BtrFsInfo ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ESUCCESS ; 
 TYPE_2__* FUNC0 (scalar_t__) ; 
 scalar_t__ READ_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

ARC_STATUS FUNC3(ULONG FileId, VOID *Buffer, ULONG Size, ULONG *BytesRead)
{
    pbtrfs_file_info phandle = FUNC0(FileId);
    u64 rd;

    FUNC1("BtrFsRead %lu, size=%lu \n", FileId, Size);

    if (!Size)
        Size = phandle->inode.size;

    if (Size > phandle->inode.size)
        Size = phandle->inode.size;

    rd = FUNC2(&BtrFsInfo->FsRoot, phandle->inr, phandle->position, Size, Buffer);
    if (rd == READ_ERROR)
    {
        FUNC1("An error occured while reading file %lu\n", FileId);
        return ENOENT;
    }

    phandle->position += rd;
    *BytesRead = rd;
    return ESUCCESS;
}