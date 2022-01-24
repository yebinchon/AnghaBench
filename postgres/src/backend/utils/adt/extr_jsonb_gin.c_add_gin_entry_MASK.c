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
struct TYPE_3__ {int count; int allocated; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ GinEntries ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC2(GinEntries *entries, Datum entry)
{
	int			id = entries->count;

	if (entries->count >= entries->allocated)
	{
		if (entries->allocated)
		{
			entries->allocated *= 2;
			entries->buf = FUNC1(entries->buf,
									sizeof(Datum) * entries->allocated);
		}
		else
		{
			entries->allocated = 8;
			entries->buf = FUNC0(sizeof(Datum) * entries->allocated);
		}
	}

	entries->buf[entries->count++] = entry;

	return id;
}