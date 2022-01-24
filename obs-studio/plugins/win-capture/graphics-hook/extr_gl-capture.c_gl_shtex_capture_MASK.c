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
struct TYPE_2__ {int /*<<< orphan*/  dxgi_swap; int /*<<< orphan*/  gl_dxobj; int /*<<< orphan*/  gl_device; int /*<<< orphan*/  texture; } ;
typedef  int /*<<< orphan*/  GLint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_DRAW_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_DRAW_FRAMEBUFFER_BINDING ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_BINDING_2D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void)
{
	GLint last_fbo;
	GLint last_tex;

	FUNC6(data.gl_device, 1, &data.gl_dxobj);

	FUNC3(GL_DRAW_FRAMEBUFFER_BINDING, &last_fbo);
	if (FUNC5("gl_shtex_capture", "failed to get last fbo")) {
		return;
	}

	FUNC3(GL_TEXTURE_BINDING_2D, &last_tex);
	if (FUNC5("gl_shtex_capture", "failed to get last texture")) {
		return;
	}

	FUNC4(data.texture);

	FUNC2(GL_TEXTURE_2D, last_tex);
	FUNC1(GL_DRAW_FRAMEBUFFER, last_fbo);

	FUNC7(data.gl_device, 1, &data.gl_dxobj);

	FUNC0(data.dxgi_swap, 0, 0);
}