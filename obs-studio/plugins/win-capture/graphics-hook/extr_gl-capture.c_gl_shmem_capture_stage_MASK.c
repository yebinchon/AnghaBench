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

/* Variables and functions */
 int /*<<< orphan*/  GL_BGRA ; 
 int /*<<< orphan*/  GL_PIXEL_PACK_BUFFER ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static inline void FUNC4(GLuint dst_pbo, GLuint src_tex)
{
	FUNC1(GL_TEXTURE_2D, src_tex);
	if (FUNC3("gl_shmem_capture_stage", "failed to bind src_tex")) {
		return;
	}

	FUNC0(GL_PIXEL_PACK_BUFFER, dst_pbo);
	if (FUNC3("gl_shmem_capture_stage", "failed to bind dst_pbo")) {
		return;
	}

	FUNC2(GL_TEXTURE_2D, 0, GL_BGRA, GL_UNSIGNED_BYTE, 0);
	if (FUNC3("gl_shmem_capture_stage", "failed to read src_tex")) {
		return;
	}
}