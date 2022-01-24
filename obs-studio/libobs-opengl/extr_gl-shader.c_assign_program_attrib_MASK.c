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
struct shader_attrib {int /*<<< orphan*/  name; } ;
struct gs_program {int /*<<< orphan*/  attribs; int /*<<< orphan*/  obj; } ;
typedef  int GLint ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bool FUNC4(struct gs_program *program,
				  struct shader_attrib *attrib)
{
	GLint attrib_obj = FUNC2(program->obj, attrib->name);
	if (!FUNC3("glGetAttribLocation"))
		return false;

	if (attrib_obj == -1) {
		FUNC0(LOG_ERROR,
		     "glGetAttribLocation: Could not find "
		     "attribute '%s'",
		     attrib->name);
		return false;
	}

	FUNC1(program->attribs, &attrib_obj);
	return true;
}