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
typedef  int /*<<< orphan*/  LockMethod ;
typedef  size_t LOCKMETHODID ;
typedef  int /*<<< orphan*/  LOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * LockMethods ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 

LockMethod
FUNC3(const LOCK *lock)
{
	LOCKMETHODID lockmethodid = FUNC1(*lock);

	FUNC0(0 < lockmethodid && lockmethodid < FUNC2(LockMethods));
	return LockMethods[lockmethodid];
}