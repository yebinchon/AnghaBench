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
typedef  int /*<<< orphan*/  PFATX_BOOTSECTOR ;

/* Variables and functions */
 int /*<<< orphan*/  NumberOfFats ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SectorsPerCluster ; 
 int /*<<< orphan*/  VolumeSerialNumber ; 

VOID FUNC2(PFATX_BOOTSECTOR Obj)
{
    FUNC0(Obj, VolumeSerialNumber);
    FUNC0(Obj, SectorsPerCluster);
    FUNC1(Obj, NumberOfFats);
}