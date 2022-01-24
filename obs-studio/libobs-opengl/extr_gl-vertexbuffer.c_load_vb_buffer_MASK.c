#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct shader_attrib {int /*<<< orphan*/  index; int /*<<< orphan*/  type; } ;
struct gs_vertex_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLint ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gs_vertex_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static bool FUNC6(struct shader_attrib *attrib,
			   struct gs_vertex_buffer *vb, GLint id)
{
	GLenum type;
	GLint width;
	GLuint buffer;
	bool success = true;

	buffer = FUNC1(vb, attrib->type, attrib->index, &width, &type);
	if (!buffer) {
		FUNC0(LOG_ERROR, "Vertex buffer does not have the required "
				"inputs for vertex shader");
		return false;
	}

	if (!FUNC4(GL_ARRAY_BUFFER, buffer))
		return false;

	FUNC3(id, width, type, GL_TRUE, 0, 0);
	if (!FUNC5("glVertexAttribPointer"))
		success = false;

	FUNC2(id);
	if (!FUNC5("glEnableVertexAttribArray"))
		success = false;

	if (!FUNC4(GL_ARRAY_BUFFER, 0))
		success = false;

	return success;
}