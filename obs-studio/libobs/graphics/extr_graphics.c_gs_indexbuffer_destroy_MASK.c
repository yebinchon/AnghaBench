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
typedef  int /*<<< orphan*/  gs_indexbuffer_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* gs_indexbuffer_destroy ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef  TYPE_2__ graphics_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* thread_graphics ; 

void FUNC2(gs_indexbuffer_t *indexbuffer)
{
	graphics_t *graphics = thread_graphics;

	if (!FUNC0("gs_indexbuffer_destroy"))
		return;
	if (!indexbuffer)
		return;

	graphics->exports.gs_indexbuffer_destroy(indexbuffer);
}