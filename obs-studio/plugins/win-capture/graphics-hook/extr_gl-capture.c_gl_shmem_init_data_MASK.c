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
struct TYPE_2__ {int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/ * textures; int /*<<< orphan*/ * pbos; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BGRA ; 
 int /*<<< orphan*/  GL_PIXEL_PACK_BUFFER ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_STREAM_READ ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 TYPE_1__ data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static inline bool FUNC5(size_t idx, size_t size)
{
	FUNC0(GL_PIXEL_PACK_BUFFER, data.pbos[idx]);
	if (FUNC4("gl_shmem_init_data", "failed to bind pbo")) {
		return false;
	}

	FUNC2(GL_PIXEL_PACK_BUFFER, size, 0, GL_STREAM_READ);
	if (FUNC4("gl_shmem_init_data", "failed to set pbo data")) {
		return false;
	}

	FUNC1(GL_TEXTURE_2D, data.textures[idx]);
	if (FUNC4("gl_shmem_init_data", "failed to set bind texture")) {
		return false;
	}

	FUNC3(GL_TEXTURE_2D, 0, GL_RGBA, data.cx, data.cy, 0, GL_BGRA,
		     GL_UNSIGNED_BYTE, NULL);
	if (FUNC4("gl_shmem_init_data", "failed to set texture data")) {
		return false;
	}

	return true;
}