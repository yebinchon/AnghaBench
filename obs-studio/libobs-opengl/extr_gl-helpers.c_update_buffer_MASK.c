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
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int GL_MAP_INVALIDATE_BUFFER_BIT ; 
 int GL_MAP_WRITE_BIT ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void const*,size_t) ; 

bool FUNC5(GLenum target, GLuint buffer, const void *data, size_t size)
{
	void *ptr;
	bool success = true;

	if (!FUNC2(target, buffer))
		return false;

	/* glMapBufferRange with these flags will actually give far better
	 * performance than a plain glMapBuffer call */
	ptr = FUNC0(target, 0, size,
			       GL_MAP_WRITE_BIT | GL_MAP_INVALIDATE_BUFFER_BIT);
	success = FUNC3("glMapBufferRange");
	if (success && ptr) {
		FUNC4(ptr, data, size);
		FUNC1(target);
	}

	FUNC2(target, 0);
	return success;
}