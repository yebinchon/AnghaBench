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
struct TYPE_2__ {int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  base_cy; int /*<<< orphan*/  base_cx; int /*<<< orphan*/  fbo; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BACK ; 
 int /*<<< orphan*/  GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_DRAW_FRAMEBUFFER ; 
 scalar_t__ GL_INVALID_OPERATION ; 
 int /*<<< orphan*/  GL_LINEAR ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int darkest_dungeon_fix ; 
 TYPE_1__ data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  process_name ; 

__attribute__((used)) static void FUNC9(GLuint dst)
{
	FUNC1(GL_DRAW_FRAMEBUFFER, data.fbo);
	if (FUNC8("gl_copy_backbuffer", "failed to bind FBO")) {
		return;
	}

	FUNC2(GL_TEXTURE_2D, dst);
	if (FUNC8("gl_copy_backbuffer", "failed to bind texture")) {
		return;
	}

	FUNC5(GL_DRAW_FRAMEBUFFER, GL_COLOR_ATTACHMENT0,
			       GL_TEXTURE_2D, dst, 0);
	if (FUNC8("gl_copy_backbuffer", "failed to set frame buffer")) {
		return;
	}

	FUNC7(GL_BACK);

	/* darkest dungeon fix */
	darkest_dungeon_fix = FUNC6() == GL_INVALID_OPERATION &&
			      FUNC0(process_name, "Darkest.exe") == 0;

	FUNC4(GL_COLOR_ATTACHMENT0);
	if (FUNC8("gl_copy_backbuffer", "failed to set draw buffer")) {
		return;
	}

	FUNC3(0, 0, data.base_cx, data.base_cy, 0, 0, data.cx,
			  data.cy, GL_COLOR_BUFFER_BIT, GL_LINEAR);
	FUNC8("gl_copy_backbuffer", "failed to blit");
}