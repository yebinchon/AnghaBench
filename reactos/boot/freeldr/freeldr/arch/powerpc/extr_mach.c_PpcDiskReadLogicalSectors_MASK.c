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
typedef  int ULONGLONG ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  BootPart ; 
 int FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,int,int) ; 
 int part_handle ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

BOOLEAN FUNC4( ULONG DriveNumber, ULONGLONG SectorNumber,
                   ULONG SectorCount, PVOID Buffer ) {
    int rlen = 0;

    if( part_handle == -1 ) {
    part_handle = FUNC0( BootPart );

    if( part_handle == -1 ) {
        FUNC3("Could not open any disk devices we know about\n");
        return FALSE;
    }
    }

    if( part_handle == -1 ) {
    FUNC3("Got partition handle %x\n", part_handle);
    return FALSE;
    }

    if( FUNC2( part_handle,
           (ULONG)(SectorNumber >> 25),
           (ULONG)((SectorNumber * 512) & 0xffffffff) ) ) {
    FUNC3("Seek to %x failed\n", (ULONG)(SectorNumber * 512));
    return FALSE;
    }

    rlen = FUNC1( part_handle, Buffer, (ULONG)(SectorCount * 512) );
    return rlen > 0;
}