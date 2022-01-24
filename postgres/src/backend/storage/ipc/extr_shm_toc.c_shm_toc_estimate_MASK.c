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
struct TYPE_3__ {int /*<<< orphan*/  space_for_chunks; int /*<<< orphan*/  number_of_keys; } ;
typedef  TYPE_1__ shm_toc_estimator ;
typedef  int /*<<< orphan*/  shm_toc_entry ;
typedef  int /*<<< orphan*/  Size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shm_toc ; 
 int /*<<< orphan*/  toc_entry ; 

Size
FUNC4(shm_toc_estimator *e)
{
	Size		sz;

	sz = FUNC3(shm_toc, toc_entry);
	sz += FUNC1(sz, FUNC2(e->number_of_keys, sizeof(shm_toc_entry)));
	sz += FUNC1(sz, e->space_for_chunks);

	return FUNC0(sz);
}