#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct vec3 {int dummy; } ;
struct gs_vertex_buffer {int vertex_buffer; int normal_buffer; int tangent_buffer; int color_buffer; int /*<<< orphan*/  vao; TYPE_1__* data; scalar_t__ dynamic; int /*<<< orphan*/  uv_sizes; int /*<<< orphan*/  uv_buffers; } ;
struct gs_tvertarray {int width; scalar_t__ array; } ;
struct TYPE_2__ {int num; size_t num_tex; struct gs_tvertarray* tvarray; scalar_t__ colors; scalar_t__ tangents; scalar_t__ normals; scalar_t__ points; } ;
typedef  int GLuint ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_STATIC_DRAW ; 
 int /*<<< orphan*/  GL_STREAM_DRAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC5(struct gs_vertex_buffer *vb)
{
	GLenum usage = vb->dynamic ? GL_STREAM_DRAW : GL_STATIC_DRAW;
	size_t i;

	if (!FUNC2(GL_ARRAY_BUFFER, &vb->vertex_buffer,
			      vb->data->num * sizeof(struct vec3),
			      vb->data->points, usage))
		return false;

	if (vb->data->normals) {
		if (!FUNC2(GL_ARRAY_BUFFER, &vb->normal_buffer,
				      vb->data->num * sizeof(struct vec3),
				      vb->data->normals, usage))
			return false;
	}

	if (vb->data->tangents) {
		if (!FUNC2(GL_ARRAY_BUFFER, &vb->tangent_buffer,
				      vb->data->num * sizeof(struct vec3),
				      vb->data->tangents, usage))
			return false;
	}

	if (vb->data->colors) {
		if (!FUNC2(GL_ARRAY_BUFFER, &vb->color_buffer,
				      vb->data->num * sizeof(uint32_t),
				      vb->data->colors, usage))
			return false;
	}

	FUNC1(vb->uv_buffers, vb->data->num_tex);
	FUNC1(vb->uv_sizes, vb->data->num_tex);

	for (i = 0; i < vb->data->num_tex; i++) {
		GLuint tex_buffer;
		struct gs_tvertarray *tv = vb->data->tvarray + i;
		size_t size = vb->data->num * sizeof(float) * tv->width;

		if (!FUNC2(GL_ARRAY_BUFFER, &tex_buffer, size,
				      tv->array, usage))
			return false;

		FUNC0(vb->uv_buffers, &tex_buffer);
		FUNC0(vb->uv_sizes, &tv->width);
	}

	if (!vb->dynamic) {
		FUNC4(vb->data);
		vb->data = NULL;
	}

	if (!FUNC3(1, &vb->vao))
		return false;

	return true;
}