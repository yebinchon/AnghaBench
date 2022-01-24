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
struct TYPE_2__ {int /*<<< orphan*/  format; } ;
struct gs_texture_2d {int width; int height; TYPE_1__ base; int /*<<< orphan*/  unpack_buffer; } ;
typedef  int GLsizeiptr ;

/* Variables and functions */
 int /*<<< orphan*/  GL_DYNAMIC_DRAW ; 
 int /*<<< orphan*/  GL_PIXEL_UNPACK_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct gs_texture_2d *tex)
{
	GLsizeiptr size;
	bool success = true;

	if (!FUNC2(1, &tex->unpack_buffer))
		return false;

	if (!FUNC1(GL_PIXEL_UNPACK_BUFFER, tex->unpack_buffer))
		return false;

	size = tex->width * FUNC4(tex->base.format);
	if (!FUNC5(tex->base.format)) {
		size /= 8;
		size = (size + 3) & 0xFFFFFFFC;
		size *= tex->height;
	} else {
		size *= tex->height;
		size /= 8;
	}

	FUNC0(GL_PIXEL_UNPACK_BUFFER, size, 0, GL_DYNAMIC_DRAW);
	if (!FUNC3("glBufferData"))
		success = false;

	if (!FUNC1(GL_PIXEL_UNPACK_BUFFER, 0))
		success = false;

	return success;
}