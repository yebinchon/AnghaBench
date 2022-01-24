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
struct TYPE_3__ {int /*<<< orphan*/  tabname; scalar_t__ isshared; } ;
typedef  TYPE_1__ HTAB ;

/* Variables and functions */
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(HTAB *hashp)
{
	/*
	 * If the corruption is in a shared hashtable, we'd better force a
	 * systemwide restart.  Otherwise, just shut down this one backend.
	 */
	if (hashp->isshared)
		FUNC0(PANIC, "hash table \"%s\" corrupted", hashp->tabname);
	else
		FUNC0(FATAL, "hash table \"%s\" corrupted", hashp->tabname);
}