#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_4__ {TYPE_1__* FuncTable; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* Seek ) (size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  SEEKMODE ;
typedef  int /*<<< orphan*/  LARGE_INTEGER ;
typedef  int /*<<< orphan*/  ARC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 TYPE_2__* FileData ; 
 size_t MAX_FDS ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ARC_STATUS FUNC1(ULONG FileId, LARGE_INTEGER* Position, SEEKMODE SeekMode)
{
    if (FileId >= MAX_FDS || !FileData[FileId].FuncTable)
        return EBADF;
    return FileData[FileId].FuncTable->Seek(FileId, Position, SeekMode);
}