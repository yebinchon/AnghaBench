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
typedef  scalar_t__ uint32_t ;
struct gs_vertex_buffer {scalar_t__ num; } ;
struct gs_program {int /*<<< orphan*/  obj; } ;
struct gs_index_buffer {scalar_t__ width; int /*<<< orphan*/  gl_type; scalar_t__ num; } ;
typedef  int /*<<< orphan*/  gs_effect_t ;
struct TYPE_6__ {struct gs_vertex_buffer* cur_vertex_buffer; struct gs_index_buffer* cur_index_buffer; struct gs_program* cur_program; int /*<<< orphan*/  empty_vao; } ;
typedef  TYPE_1__ gs_device_t ;
typedef  enum gs_draw_mode { ____Placeholder_gs_draw_mode } gs_draw_mode ;
typedef  int /*<<< orphan*/  GLvoid ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct gs_program* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct gs_program*,struct gs_vertex_buffer*,struct gs_index_buffer*) ; 
 int /*<<< orphan*/  FUNC12 (struct gs_program*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

void FUNC14(gs_device_t *device, enum gs_draw_mode draw_mode,
		 uint32_t start_vert, uint32_t num_verts)
{
	struct gs_vertex_buffer *vb = device->cur_vertex_buffer;
	struct gs_index_buffer *ib = device->cur_index_buffer;
	GLenum topology = FUNC2(draw_mode);
	gs_effect_t *effect = FUNC10();
	struct gs_program *program;

	if (!FUNC1(device, num_verts))
		goto fail;

	if (effect)
		FUNC9(effect);

	program = FUNC3(device);
	if (!program)
		goto fail;

	if (vb)
		FUNC11(program, vb, ib);
	else
		FUNC7(device->empty_vao);

	if (program != device->cur_program && device->cur_program) {
		FUNC6(0);
		FUNC8("glUseProgram (zero)");
	}

	if (program != device->cur_program) {
		device->cur_program = program;

		FUNC6(program->obj);
		if (!FUNC8("glUseProgram"))
			goto fail;
	}

	FUNC13(device);

	FUNC12(program);

	if (ib) {
		if (num_verts == 0)
			num_verts = (uint32_t)device->cur_index_buffer->num;
		FUNC5(topology, num_verts, ib->gl_type,
			       (const GLvoid *)(start_vert * ib->width));
		if (!FUNC8("glDrawElements"))
			goto fail;

	} else {
		if (num_verts == 0)
			num_verts = (uint32_t)device->cur_vertex_buffer->num;
		FUNC4(topology, start_vert, num_verts);
		if (!FUNC8("glDrawArrays"))
			goto fail;
	}

	return;

fail:
	FUNC0(LOG_ERROR, "device_draw (GL) failed");
}