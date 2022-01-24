#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  pbtrfs_file_info ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  ARC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ESUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_BTRFS_FILE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

ARC_STATUS FUNC3(ULONG FileId)
{
    pbtrfs_file_info phandle = FUNC1(FileId);
    FUNC2("BtrFsClose %lu\n", FileId);

    FUNC0(phandle, TAG_BTRFS_FILE);
    return ESUCCESS;
}