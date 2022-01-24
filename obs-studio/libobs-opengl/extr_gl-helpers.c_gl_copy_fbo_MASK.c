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
struct gs_texture {int /*<<< orphan*/  gl_target; int /*<<< orphan*/  texture; } ;
struct fbo_info {int /*<<< orphan*/  fbo; } ;
typedef  int /*<<< orphan*/  GLint ;

/* Variables and functions */
 scalar_t__ GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  GL_READ_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_READ_FRAMEBUFFER_BINDING ; 
 struct fbo_info* FUNC0 (struct gs_texture*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static bool FUNC8(struct gs_texture *dst, uint32_t dst_x, uint32_t dst_y,
			struct gs_texture *src, uint32_t src_x, uint32_t src_y,
			uint32_t width, uint32_t height)
{
	struct fbo_info *fbo = FUNC0(src, width, height);
	GLint last_fbo;
	bool success = false;

	if (!fbo)
		return false;

	if (!FUNC6(GL_READ_FRAMEBUFFER_BINDING, &last_fbo))
		return false;
	if (!FUNC4(GL_READ_FRAMEBUFFER, fbo->fbo))
		return false;
	if (!FUNC5(dst->gl_target, dst->texture))
		goto fail;

	FUNC2(GL_READ_FRAMEBUFFER, GL_COLOR_ATTACHMENT0 + 0,
			       src->gl_target, src->texture, 0);
	if (!FUNC7("glFrameBufferTexture2D"))
		goto fail;

	FUNC3(GL_COLOR_ATTACHMENT0 + 0);
	if (!FUNC7("glReadBuffer"))
		goto fail;

	FUNC1(dst->gl_target, 0, dst_x, dst_y, src_x, src_y,
			    width, height);
	if (!FUNC7("glCopyTexSubImage2D"))
		goto fail;

	success = true;

fail:
	if (!FUNC5(dst->gl_target, 0))
		success = false;
	if (!FUNC4(GL_READ_FRAMEBUFFER, last_fbo))
		success = false;

	return success;
}