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
struct shader_attrib {int dummy; } ;
struct gs_vertex_buffer {int /*<<< orphan*/  vao; } ;
struct TYPE_4__ {size_t num; struct shader_attrib* array; } ;
struct gs_shader {TYPE_2__ attribs; } ;
struct TYPE_3__ {int /*<<< orphan*/ * array; } ;
struct gs_program {TYPE_1__ attribs; struct gs_shader* vertex_shader; } ;
struct gs_index_buffer {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ELEMENT_ARRAY_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct shader_attrib*,struct gs_vertex_buffer*,int /*<<< orphan*/ ) ; 

bool FUNC3(struct gs_program *program, struct gs_vertex_buffer *vb,
		     struct gs_index_buffer *ib)
{
	struct gs_shader *shader = program->vertex_shader;
	size_t i;

	if (!FUNC1(vb->vao))
		return false;

	for (i = 0; i < shader->attribs.num; i++) {
		struct shader_attrib *attrib = shader->attribs.array + i;
		if (!FUNC2(attrib, vb, program->attribs.array[i]))
			return false;
	}

	if (ib && !FUNC0(GL_ELEMENT_ARRAY_BUFFER, ib->buffer))
		return false;

	return true;
}