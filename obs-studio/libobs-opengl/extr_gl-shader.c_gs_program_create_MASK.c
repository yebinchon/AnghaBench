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
struct gs_program {TYPE_2__* vertex_shader; int /*<<< orphan*/  obj; TYPE_1__* pixel_shader; struct gs_program* next; struct gs_program** prev_next; struct gs_device* device; } ;
struct gs_device {struct gs_program* first_program; TYPE_1__* cur_pixel_shader; TYPE_2__* cur_vertex_shader; } ;
struct TYPE_4__ {int /*<<< orphan*/  obj; } ;
struct TYPE_3__ {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int GL_FALSE ; 
 int /*<<< orphan*/  GL_LINK_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct gs_program*) ; 
 int /*<<< orphan*/  FUNC1 (struct gs_program*) ; 
 struct gs_program* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct gs_program*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

struct gs_program *FUNC11(struct gs_device *device)
{
	struct gs_program *program = FUNC2(sizeof(*program));
	int linked = false;

	program->device = device;
	program->vertex_shader = device->cur_vertex_shader;
	program->pixel_shader = device->cur_pixel_shader;

	program->obj = FUNC4();
	if (!FUNC8("glCreateProgram"))
		goto error_detach_neither;

	FUNC3(program->obj, program->vertex_shader->obj);
	if (!FUNC8("glAttachShader (vertex)"))
		goto error_detach_neither;

	FUNC3(program->obj, program->pixel_shader->obj);
	if (!FUNC8("glAttachShader (pixel)"))
		goto error_detach_vertex;

	FUNC7(program->obj);
	if (!FUNC8("glLinkProgram"))
		goto error;

	FUNC6(program->obj, GL_LINK_STATUS, &linked);
	if (!FUNC8("glGetProgramiv"))
		goto error;

	if (linked == GL_FALSE) {
		FUNC10(program->obj);
		goto error;
	}

	if (!FUNC0(program))
		goto error;
	if (!FUNC1(program))
		goto error;

	FUNC5(program->obj, program->vertex_shader->obj);
	FUNC8("glDetachShader (vertex)");

	FUNC5(program->obj, program->pixel_shader->obj);
	FUNC8("glDetachShader (pixel)");

	program->next = device->first_program;
	program->prev_next = &device->first_program;
	device->first_program = program;
	if (program->next)
		program->next->prev_next = &program->next;

	return program;

error:
	FUNC5(program->obj, program->pixel_shader->obj);
	FUNC8("glDetachShader (pixel)");

error_detach_vertex:
	FUNC5(program->obj, program->vertex_shader->obj);
	FUNC8("glDetachShader (vertex)");

error_detach_neither:
	FUNC9(program);
	return NULL;
}