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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__* array; scalar_t__ num; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; TYPE_3__ uv_buffers; TYPE_3__ uv_sizes; scalar_t__ vao; scalar_t__ color_buffer; scalar_t__ tangent_buffer; scalar_t__ normal_buffer; scalar_t__ vertex_buffer; } ;
typedef  TYPE_1__ gs_vertbuffer_t ;
typedef  int GLsizei ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(gs_vertbuffer_t *vb)
{
	if (vb) {
		if (vb->vertex_buffer)
			FUNC2(1, &vb->vertex_buffer);
		if (vb->normal_buffer)
			FUNC2(1, &vb->normal_buffer);
		if (vb->tangent_buffer)
			FUNC2(1, &vb->tangent_buffer);
		if (vb->color_buffer)
			FUNC2(1, &vb->color_buffer);
		if (vb->uv_buffers.num)
			FUNC2((GLsizei)vb->uv_buffers.num,
					  vb->uv_buffers.array);

		if (vb->vao)
			FUNC3(1, &vb->vao);

		FUNC1(vb->uv_sizes);
		FUNC1(vb->uv_buffers);
		FUNC4(vb->data);

		FUNC0(vb);
	}
}