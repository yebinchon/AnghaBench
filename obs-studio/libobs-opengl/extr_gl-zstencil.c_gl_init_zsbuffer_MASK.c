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
typedef  int /*<<< orphan*/  uint32_t ;
struct gs_zstencil_buffer {int /*<<< orphan*/  format; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_RENDERBUFFER ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bool FUNC4(struct gs_zstencil_buffer *zs, uint32_t width,
			     uint32_t height)
{
	FUNC0(1, &zs->buffer);
	if (!FUNC3("glGenRenderbuffers"))
		return false;

	if (!FUNC2(GL_RENDERBUFFER, zs->buffer))
		return false;

	FUNC1(GL_RENDERBUFFER, zs->format, width, height);
	if (!FUNC3("glRenderbufferStorage"))
		return false;

	FUNC2(GL_RENDERBUFFER, 0);
	return true;
}