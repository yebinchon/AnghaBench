#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t numLockModes; char const** lockModeNames; } ;
typedef  size_t LOCKMODE ;
typedef  size_t LOCKMETHODID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__** LockMethods ; 
 size_t FUNC1 (TYPE_1__**) ; 

const char *
FUNC2(LOCKMETHODID lockmethodid, LOCKMODE mode)
{
	FUNC0(lockmethodid > 0 && lockmethodid < FUNC1(LockMethods));
	FUNC0(mode > 0 && mode <= LockMethods[lockmethodid]->numLockModes);
	return LockMethods[lockmethodid]->lockModeNames[mode];
}