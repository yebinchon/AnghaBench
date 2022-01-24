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
typedef  scalar_t__ uint32 ;
struct TYPE_4__ {int /*<<< orphan*/ * children; } ;
typedef  TYPE_1__ JsonbContainer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*,int) ; 

uint32
FUNC3(const JsonbContainer *jc, int index)
{
	uint32		off;
	uint32		len;

	/*
	 * If the length is stored directly in the JEntry, just return it.
	 * Otherwise, get the begin offset of the entry, and subtract that from
	 * the stored end+1 offset.
	 */
	if (FUNC0(jc->children[index]))
	{
		off = FUNC2(jc, index);
		len = FUNC1(jc->children[index]) - off;
	}
	else
		len = FUNC1(jc->children[index]);

	return len;
}