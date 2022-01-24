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
struct TYPE_4__ {struct TYPE_4__* schunks; struct TYPE_4__* spages; scalar_t__ pagetable; } ;
typedef  TYPE_1__ TIDBitmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(TIDBitmap *tbm)
{
	if (tbm->pagetable)
		FUNC0(tbm->pagetable);
	if (tbm->spages)
		FUNC1(tbm->spages);
	if (tbm->schunks)
		FUNC1(tbm->schunks);
	FUNC1(tbm);
}