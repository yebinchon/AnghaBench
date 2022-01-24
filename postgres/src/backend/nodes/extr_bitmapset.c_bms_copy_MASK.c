#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  nwords; } ;
typedef  TYPE_1__ Bitmapset ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__ const*,size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 

Bitmapset *
FUNC3(const Bitmapset *a)
{
	Bitmapset  *result;
	size_t		size;

	if (a == NULL)
		return NULL;
	size = FUNC0(a->nwords);
	result = (Bitmapset *) FUNC2(size);
	FUNC1(result, a, size);
	return result;
}