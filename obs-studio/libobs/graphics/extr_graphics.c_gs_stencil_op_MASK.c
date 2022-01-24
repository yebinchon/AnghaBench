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
struct TYPE_4__ {int /*<<< orphan*/  (* device_stencil_op ) (int /*<<< orphan*/ ,int,int,int,int) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  device; TYPE_1__ exports; } ;
typedef  TYPE_2__ graphics_t ;
typedef  enum gs_stencil_side { ____Placeholder_gs_stencil_side } gs_stencil_side ;
typedef  enum gs_stencil_op_type { ____Placeholder_gs_stencil_op_type } gs_stencil_op_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int) ; 
 TYPE_2__* thread_graphics ; 

void FUNC2(enum gs_stencil_side side, enum gs_stencil_op_type fail,
		   enum gs_stencil_op_type zfail, enum gs_stencil_op_type zpass)
{
	graphics_t *graphics = thread_graphics;

	if (!FUNC0("gs_stencil_op"))
		return;

	graphics->exports.device_stencil_op(graphics->device, side, fail, zfail,
					    zpass);
}