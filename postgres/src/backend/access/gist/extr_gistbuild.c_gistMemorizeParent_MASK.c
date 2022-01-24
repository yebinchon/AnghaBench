#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parentMap; } ;
struct TYPE_4__ {int /*<<< orphan*/  parentblkno; } ;
typedef  TYPE_1__ ParentMapEntry ;
typedef  TYPE_2__ GISTBuildState ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_ENTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC1(GISTBuildState *buildstate, BlockNumber child, BlockNumber parent)
{
	ParentMapEntry *entry;
	bool		found;

	entry = (ParentMapEntry *) FUNC0(buildstate->parentMap,
										   (const void *) &child,
										   HASH_ENTER,
										   &found);
	entry->parentblkno = parent;
}