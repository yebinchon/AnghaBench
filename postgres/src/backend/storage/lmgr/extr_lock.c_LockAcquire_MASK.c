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
typedef  int /*<<< orphan*/  LockAcquireResult ;
typedef  int /*<<< orphan*/  LOCKTAG ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 

LockAcquireResult
FUNC1(const LOCKTAG *locktag,
			LOCKMODE lockmode,
			bool sessionLock,
			bool dontWait)
{
	return FUNC0(locktag, lockmode, sessionLock, dontWait,
							   true, NULL);
}