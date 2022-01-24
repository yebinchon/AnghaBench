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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  PFAT_FILE_INFO ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  ARC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ESUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

ARC_STATUS FUNC2(ULONG FileId, VOID* Buffer, ULONG N, ULONG* Count)
{
    PFAT_FILE_INFO FileHandle = FUNC1(FileId);
    BOOLEAN Success;

    //
    // Call old read method
    //
    Success = FUNC0(FileHandle, N, Count, Buffer);

    //
    // Check for success
    //
    if (Success)
        return ESUCCESS;
    else
        return EIO;
}