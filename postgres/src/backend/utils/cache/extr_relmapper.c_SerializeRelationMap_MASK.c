#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  active_local_updates; int /*<<< orphan*/  active_shared_updates; } ;
typedef  scalar_t__ Size ;
typedef  TYPE_1__ SerializedActiveRelMaps ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  active_local_updates ; 
 int /*<<< orphan*/  active_shared_updates ; 

void
FUNC2(Size maxSize, char *startAddress)
{
	SerializedActiveRelMaps *relmaps;

	FUNC0(maxSize >= FUNC1());

	relmaps = (SerializedActiveRelMaps *) startAddress;
	relmaps->active_shared_updates = active_shared_updates;
	relmaps->active_local_updates = active_local_updates;
}