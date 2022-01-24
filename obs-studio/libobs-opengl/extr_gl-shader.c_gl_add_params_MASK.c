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
struct gs_shader {void* world; void* viewproj; } ;
struct TYPE_3__ {size_t num; scalar_t__ array; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct gl_shader_parser {TYPE_2__ parser; } ;
typedef  int /*<<< orphan*/  GLint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gs_shader*,scalar_t__,int /*<<< orphan*/ *) ; 
 void* FUNC1 (struct gs_shader*,char*) ; 

__attribute__((used)) static inline bool FUNC2(struct gs_shader *shader,
				 struct gl_shader_parser *glsp)
{
	size_t i;
	GLint tex_id = 0;

	for (i = 0; i < glsp->parser.params.num; i++)
		if (!FUNC0(shader, glsp->parser.params.array + i,
				  &tex_id))
			return false;

	shader->viewproj = FUNC1(shader, "ViewProj");
	shader->world = FUNC1(shader, "World");

	return true;
}