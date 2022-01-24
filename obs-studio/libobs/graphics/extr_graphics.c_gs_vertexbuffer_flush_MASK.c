#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gs_vertbuffer_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* gs_vertexbuffer_flush ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {TYPE_1__ exports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* thread_graphics ; 

void FUNC2(gs_vertbuffer_t *vertbuffer)
{
	if (!FUNC0("gs_vertexbuffer_flush", vertbuffer))
		return;

	thread_graphics->exports.gs_vertexbuffer_flush(vertbuffer);
}