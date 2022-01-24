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
struct gs_stage_surface {int width; int bytes_per_pixel; int height; int /*<<< orphan*/  pack_buffer; } ;
typedef  int GLsizeiptr ;

/* Variables and functions */
 int /*<<< orphan*/  GL_DYNAMIC_READ ; 
 int /*<<< orphan*/  GL_PIXEL_PACK_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bool FUNC4(struct gs_stage_surface *surf)
{
	GLsizeiptr size;
	bool success = true;

	if (!FUNC2(1, &surf->pack_buffer))
		return false;

	if (!FUNC1(GL_PIXEL_PACK_BUFFER, surf->pack_buffer))
		return false;

	size = surf->width * surf->bytes_per_pixel;
	size = (size + 3) & 0xFFFFFFFC; /* align width to 4-byte boundary */
	size *= surf->height;

	FUNC0(GL_PIXEL_PACK_BUFFER, size, 0, GL_DYNAMIC_READ);
	if (!FUNC3("glBufferData"))
		success = false;

	if (!FUNC1(GL_PIXEL_PACK_BUFFER, 0))
		success = false;

	return success;
}