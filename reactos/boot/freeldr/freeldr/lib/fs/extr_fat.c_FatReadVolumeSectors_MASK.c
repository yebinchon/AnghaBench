#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONGLONG ;
typedef  int ULONG ;
struct TYPE_6__ {int QuadPart; } ;
struct TYPE_5__ {int /*<<< orphan*/  DeviceId; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PFAT_VOLUME_INFO ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  scalar_t__ ARC_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ESUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SeekAbsolute ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC3(PFAT_VOLUME_INFO Volume, ULONG SectorNumber, ULONG SectorCount, PVOID Buffer)
{
    LARGE_INTEGER Position;
    ULONG Count;
    ARC_STATUS Status;

    //TRACE("FatReadVolumeSectors(): SectorNumber %d, SectorCount %d, Buffer %p\n",
    //    SectorNumber, SectorCount, Buffer);

    //
    // Seek to right position
    //
    Position.QuadPart = (ULONGLONG)SectorNumber * 512;
    Status = FUNC1(Volume->DeviceId, &Position, SeekAbsolute);
    if (Status != ESUCCESS)
    {
        FUNC2("FatReadVolumeSectors() Failed to seek\n");
        return FALSE;
    }

    //
    // Read data
    //
    Status = FUNC0(Volume->DeviceId, Buffer, SectorCount * 512, &Count);
    if (Status != ESUCCESS || Count != SectorCount * 512)
    {
        FUNC2("FatReadVolumeSectors() Failed to read\n");
        return FALSE;
    }

    // Return success
    return TRUE;
}