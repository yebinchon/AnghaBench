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
typedef  int /*<<< orphan*/  uint32_t ;
struct vec3 {int dummy; } ;
struct vec2 {int dummy; } ;
struct gs_vb_data {int num; int num_tex; TYPE_1__* tvarray; void* colors; void* normals; void* points; } ;
struct gs_tvertarray {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* device_vertexbuffer_create ) (int /*<<< orphan*/ ,struct gs_vb_data*,int /*<<< orphan*/ ) ;} ;
struct graphics_subsystem {int /*<<< orphan*/  immediate_vertbuffer; int /*<<< orphan*/  device; TYPE_2__ exports; } ;
struct TYPE_3__ {int width; void* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_DYNAMIC ; 
 int IMMEDIATE_COUNT ; 
 void* FUNC0 (int) ; 
 struct gs_vb_data* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct gs_vb_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct graphics_subsystem *graphics)
{
	struct gs_vb_data *vbd;

	vbd = FUNC1();
	vbd->num = IMMEDIATE_COUNT;
	vbd->points = FUNC0(sizeof(struct vec3) * IMMEDIATE_COUNT);
	vbd->normals = FUNC0(sizeof(struct vec3) * IMMEDIATE_COUNT);
	vbd->colors = FUNC0(sizeof(uint32_t) * IMMEDIATE_COUNT);
	vbd->num_tex = 1;
	vbd->tvarray = FUNC0(sizeof(struct gs_tvertarray));
	vbd->tvarray[0].width = 2;
	vbd->tvarray[0].array = FUNC0(sizeof(struct vec2) * IMMEDIATE_COUNT);

	graphics->immediate_vertbuffer =
		graphics->exports.device_vertexbuffer_create(graphics->device,
							     vbd, GS_DYNAMIC);
	if (!graphics->immediate_vertbuffer)
		return false;

	return true;
}