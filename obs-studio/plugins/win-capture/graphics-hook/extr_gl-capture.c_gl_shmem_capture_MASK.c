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
struct TYPE_2__ {int cur_tex; int copy_wait; int* texture_mapped; int* texture_ready; int /*<<< orphan*/ * pbos; int /*<<< orphan*/ * textures; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_DRAW_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_DRAW_FRAMEBUFFER_BINDING ; 
 int /*<<< orphan*/  GL_PIXEL_PACK_BUFFER ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_BINDING_2D ; 
 int NUM_BUFFERS ; 
 TYPE_1__ data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(void)
{
	int next_tex;
	GLint last_fbo;
	GLint last_tex;

	FUNC2(GL_DRAW_FRAMEBUFFER_BINDING, &last_fbo);
	if (FUNC5("gl_shmem_capture", "failed to get last fbo")) {
		return;
	}

	FUNC2(GL_TEXTURE_BINDING_2D, &last_tex);
	if (FUNC5("gl_shmem_capture", "failed to get last texture")) {
		return;
	}

	FUNC6();

	next_tex = (data.cur_tex == NUM_BUFFERS - 1) ? 0 : data.cur_tex + 1;

	FUNC4(data.textures[next_tex]);

	if (data.copy_wait < NUM_BUFFERS - 1) {
		data.copy_wait++;
	} else {
		GLuint src = data.textures[next_tex];
		GLuint dst = data.pbos[next_tex];

		if (FUNC8(next_tex)) {
			FUNC3(GL_PIXEL_PACK_BUFFER);
			data.texture_mapped[next_tex] = false;
			FUNC9(next_tex);
		}

		FUNC7(dst, src);
		data.texture_ready[next_tex] = true;
	}

	FUNC1(GL_TEXTURE_2D, last_tex);
	FUNC0(GL_DRAW_FRAMEBUFFER, last_fbo);
}