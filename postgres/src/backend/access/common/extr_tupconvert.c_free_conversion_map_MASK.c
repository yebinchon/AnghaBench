#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* outisnull; struct TYPE_4__* outvalues; struct TYPE_4__* inisnull; struct TYPE_4__* invalues; struct TYPE_4__* attrMap; } ;
typedef  TYPE_1__ TupleConversionMap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void
FUNC1(TupleConversionMap *map)
{
	/* indesc and outdesc are not ours to free */
	FUNC0(map->attrMap);
	FUNC0(map->invalues);
	FUNC0(map->inisnull);
	FUNC0(map->outvalues);
	FUNC0(map->outisnull);
	FUNC0(map);
}