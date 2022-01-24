#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int mpgl_caps; int /*<<< orphan*/  (* PixelStorei ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* TexSubImage2D ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ;} ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  GL_UNPACK_ALIGNMENT ; 
 int /*<<< orphan*/  GL_UNPACK_ROW_LENGTH ; 
 int MPGL_CAP_ROW_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void FUNC9(GL *gl, GLenum target, GLenum format, GLenum type,
                   const void *dataptr, int stride,
                   int x, int y, int w, int h)
{
    int bpp = FUNC2(format, type);
    const uint8_t *data = dataptr;
    int y_max = y + h;
    if (w <= 0 || h <= 0 || !bpp)
        return;
    FUNC0(stride > 0);
    gl->PixelStorei(GL_UNPACK_ALIGNMENT, FUNC1(stride));
    int slice = h;
    if (gl->mpgl_caps & MPGL_CAP_ROW_LENGTH) {
        // this is not always correct, but should work for MPlayer
        gl->PixelStorei(GL_UNPACK_ROW_LENGTH, stride / bpp);
    } else {
        if (stride != bpp * w)
            slice = 1; // very inefficient, but at least it works
    }
    for (; y + slice <= y_max; y += slice) {
        gl->TexSubImage2D(target, 0, x, y, w, slice, format, type, data);
        data += stride * slice;
    }
    if (y < y_max)
        gl->TexSubImage2D(target, 0, x, y, w, y_max - y, format, type, data);
    if (gl->mpgl_caps & MPGL_CAP_ROW_LENGTH)
        gl->PixelStorei(GL_UNPACK_ROW_LENGTH, 0);
    gl->PixelStorei(GL_UNPACK_ALIGNMENT, 4);
}