#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ entry; } ;
struct TYPE_5__ {TYPE_1__ map; } ;
struct TYPE_6__ {int /*<<< orphan*/  pos; TYPE_2__ data; } ;
typedef  TYPE_3__ DocRepresentation ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const void *va, const void *vb)
{
	const DocRepresentation *a = (const DocRepresentation *) va;
	const DocRepresentation *b = (const DocRepresentation *) vb;

	if (FUNC0(a->pos) == FUNC0(b->pos))
	{
		if (FUNC1(a->pos) == FUNC1(b->pos))
		{
			if (a->data.map.entry == b->data.map.entry)
				return 0;

			return (a->data.map.entry > b->data.map.entry) ? 1 : -1;
		}

		return (FUNC1(a->pos) > FUNC1(b->pos)) ? 1 : -1;
	}

	return (FUNC0(a->pos) > FUNC0(b->pos)) ? 1 : -1;
}