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
struct TYPE_3__ {int /*<<< orphan*/  context; } ;
typedef  int Size ;
typedef  TYPE_1__ ReorderBuffer ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 

Oid *
FUNC1(ReorderBuffer *rb, int nrelids)
{
	Oid		   *relids;
	Size		alloc_len;

	alloc_len = sizeof(Oid) * nrelids;

	relids = (Oid *) FUNC0(rb->context, alloc_len);

	return relids;
}