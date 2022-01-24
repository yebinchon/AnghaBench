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
struct TYPE_4__ {scalar_t__ narray; int /*<<< orphan*/ * array; scalar_t__ nlist; int /*<<< orphan*/ * last; int /*<<< orphan*/  first; } ;
typedef  TYPE_1__ filemap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* filemap ; 
 TYPE_1__* FUNC1 (int) ; 

void
FUNC2(void)
{
	filemap_t  *map;

	map = FUNC1(sizeof(filemap_t));
	map->first = *(map->last = NULL);
	map->nlist = 0;
	map->array = NULL;
	map->narray = 0;

	FUNC0(filemap == NULL);
	filemap = map;
}