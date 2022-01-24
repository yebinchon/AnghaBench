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
struct TYPE_2__ {int /*<<< orphan*/  gl_dxobj; int /*<<< orphan*/  texture; int /*<<< orphan*/  d3d11_tex; int /*<<< orphan*/  gl_device; int /*<<< orphan*/  d3d11_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  WGL_ACCESS_WRITE_DISCARD_NV ; 
 TYPE_1__ data ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC5(void)
{
	data.gl_device = FUNC3(data.d3d11_device);
	if (!data.gl_device) {
		FUNC2("gl_shtex_init_gl_tex: failed to open device");
		return false;
	}

	FUNC0(1, &data.texture);
	if (FUNC1("gl_shtex_init_gl_tex", "failed to generate texture")) {
		return false;
	}

	data.gl_dxobj = FUNC4(data.gl_device, data.d3d11_tex,
						data.texture, GL_TEXTURE_2D,
						WGL_ACCESS_WRITE_DISCARD_NV);
	if (!data.gl_dxobj) {
		FUNC2("gl_shtex_init_gl_tex: failed to register object");
		return false;
	}

	return true;
}