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
struct TYPE_3__ {int tranche; } ;
typedef  TYPE_1__ LWLock ;

/* Variables and functions */
 int PG_WAIT_LWLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline void
FUNC1(LWLock *lock)
{
	FUNC0(PG_WAIT_LWLOCK | lock->tranche);
}