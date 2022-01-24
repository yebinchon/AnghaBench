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
struct gs_init_data {int /*<<< orphan*/  zsformat; int /*<<< orphan*/  format; } ;
struct darray {int /*<<< orphan*/  array; } ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  WGL_ACCELERATION_ARB ; 
 int /*<<< orphan*/  WGL_COLOR_BITS_ARB ; 
 int /*<<< orphan*/  WGL_DEPTH_BITS_ARB ; 
 int /*<<< orphan*/  WGL_DOUBLE_BUFFER_ARB ; 
 int /*<<< orphan*/  WGL_DRAW_TO_WINDOW_ARB ; 
 int WGL_FULL_ACCELERATION_ARB ; 
 int /*<<< orphan*/  WGL_PIXEL_TYPE_ARB ; 
 int /*<<< orphan*/  WGL_STENCIL_BITS_ARB ; 
 int /*<<< orphan*/  WGL_SUPPORT_OPENGL_ARB ; 
 int WGL_TYPE_RGBA_ARB ; 
 int /*<<< orphan*/  FUNC1 (struct darray*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct darray*) ; 
 int /*<<< orphan*/  FUNC4 (struct darray*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(HDC hdc, const struct gs_init_data *info)
{
	struct darray attribs;
	int color_bits = FUNC5(info->format);
	int depth_bits = FUNC6(info->zsformat);
	int stencil_bits = FUNC7(info->zsformat);
	UINT num_formats;
	BOOL success;
	int format;

	if (!color_bits) {
		FUNC2(LOG_ERROR, "gl_init_pixel_format: color format not "
				"supported");
		return false;
	}

	FUNC4(&attribs);
	FUNC1(&attribs, WGL_DRAW_TO_WINDOW_ARB, GL_TRUE);
	FUNC1(&attribs, WGL_SUPPORT_OPENGL_ARB, GL_TRUE);
	FUNC1(&attribs, WGL_ACCELERATION_ARB, WGL_FULL_ACCELERATION_ARB);
	FUNC1(&attribs, WGL_DOUBLE_BUFFER_ARB, GL_TRUE);
	FUNC1(&attribs, WGL_PIXEL_TYPE_ARB, WGL_TYPE_RGBA_ARB);
	FUNC1(&attribs, WGL_COLOR_BITS_ARB, color_bits);
	FUNC1(&attribs, WGL_DEPTH_BITS_ARB, depth_bits);
	FUNC1(&attribs, WGL_STENCIL_BITS_ARB, stencil_bits);
	FUNC1(&attribs, 0, 0);

	success = FUNC8(hdc, attribs.array, NULL, 1, &format,
					  &num_formats);
	if (!success || !num_formats) {
		FUNC2(LOG_ERROR, "wglChoosePixelFormatARB failed, %lu",
		     FUNC0());
		format = 0;
	}

	FUNC3(&attribs);

	return format;
}