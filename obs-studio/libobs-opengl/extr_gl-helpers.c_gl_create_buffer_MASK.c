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
typedef  int /*<<< orphan*/  GLvoid ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLsizeiptr ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 

bool FUNC4(GLenum target, GLuint *buffer, GLsizeiptr size,
		      const GLvoid *data, GLenum usage)
{
	bool success;
	if (!FUNC2(1, buffer))
		return false;
	if (!FUNC1(target, *buffer))
		return false;

	FUNC0(target, size, data, usage);
	success = FUNC3("glBufferData");

	FUNC1(target, 0);
	return success;
}