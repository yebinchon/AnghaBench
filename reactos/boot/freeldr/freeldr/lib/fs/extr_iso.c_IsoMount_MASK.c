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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_6__ {int LowPart; scalar_t__ HighPart; } ;
struct TYPE_5__ {int VdType; int /*<<< orphan*/  StandardId; } ;
typedef  int /*<<< orphan*/  PVD ;
typedef  TYPE_1__* PPVD ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  DEVVTBL ;
typedef  scalar_t__ ARC_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,TYPE_1__*,int,int*) ; 
 scalar_t__ FUNC1 (int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ESUCCESS ; 
 int /*<<< orphan*/  const Iso9660FuncTable ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int SECTORSIZE ; 
 int /*<<< orphan*/  SeekAbsolute ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

const DEVVTBL* FUNC4(ULONG DeviceId)
{
    UCHAR Buffer[SECTORSIZE];
    PPVD Pvd = (PPVD)Buffer;
    LARGE_INTEGER Position;
    ULONG Count;
    ARC_STATUS Status;

    FUNC3("Enter IsoMount(%lu)\n", DeviceId);

    //
    // Read The Primary Volume Descriptor
    //
    Position.HighPart = 0;
    Position.LowPart = 16 * SECTORSIZE;
    Status = FUNC1(DeviceId, &Position, SeekAbsolute);
    if (Status != ESUCCESS)
        return NULL;
    Status = FUNC0(DeviceId, Pvd, SECTORSIZE, &Count);
    if (Status != ESUCCESS || Count < sizeof(PVD))
        return NULL;

    //
    // Check if PVD is valid. If yes, return ISO9660 function table
    //
    if (Pvd->VdType == 1 && FUNC2(Pvd->StandardId, "CD001", 5))
    {
        FUNC3("IsoMount(%lu) success\n", DeviceId);
        return &Iso9660FuncTable;
    }

    return NULL;
}