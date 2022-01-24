#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_9__ {int /*<<< orphan*/  LowPart; } ;
struct TYPE_8__ {int /*<<< orphan*/  LowPart; } ;
struct TYPE_11__ {TYPE_2__ CurrentAddress; TYPE_1__ EndingAddress; } ;
struct TYPE_10__ {int /*<<< orphan*/  FilePointer; int /*<<< orphan*/  FileSize; } ;
typedef  TYPE_3__* PFAT_FILE_INFO ;
typedef  TYPE_4__ FILEINFORMATION ;
typedef  int /*<<< orphan*/  ARC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ESUCCESS ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ARC_STATUS FUNC3(ULONG FileId, FILEINFORMATION* Information)
{
    PFAT_FILE_INFO FileHandle = FUNC0(FileId);

    FUNC1(Information, sizeof(*Information));
    Information->EndingAddress.LowPart = FileHandle->FileSize;
    Information->CurrentAddress.LowPart = FileHandle->FilePointer;

    FUNC2("FatGetFileInformation(%lu) -> FileSize = %lu, FilePointer = 0x%lx\n",
          FileId, Information->EndingAddress.LowPart, Information->CurrentAddress.LowPart);

    return ESUCCESS;
}