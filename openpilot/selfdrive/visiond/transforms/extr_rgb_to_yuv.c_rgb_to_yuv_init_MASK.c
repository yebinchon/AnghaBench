#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cl_program ;
typedef  int /*<<< orphan*/  cl_device_id ;
typedef  int /*<<< orphan*/  cl_context ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_4__ {int width; int height; int /*<<< orphan*/  rgb_to_yuv_krnl; } ;
typedef  TYPE_1__ RGBToYUVState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,int,int,int,int,int) ; 

void FUNC6(RGBToYUVState* s, cl_context ctx, cl_device_id device_id, int width, int height, int rgb_stride) {
  int err = 0;
  FUNC4(s, 0, sizeof(*s));
  FUNC1(width % 2 == 0);
  FUNC1(height % 2 == 0);
  s->width = width;
  s->height = height;
  char args[1024];
  FUNC5(args, sizeof(args),
           "-cl-fast-relaxed-math -cl-denorms-are-zero "
#ifdef CL_DEBUG
           "-DCL_DEBUG "
#endif
           "-DWIDTH=%d -DHEIGHT=%d -DUV_WIDTH=%d -DUV_HEIGHT=%d -DRGB_STRIDE=%d -DRGB_SIZE=%d",
           width, height, width/ 2, height / 2, rgb_stride, width * height);
  cl_program prg = FUNC0(ctx, device_id, "transforms/rgb_to_yuv.cl", args);

  s->rgb_to_yuv_krnl = FUNC2(prg, "rgb_to_yuv", &err);
  FUNC1(err == 0);
  // done with this
  err = FUNC3(prg);
  FUNC1(err == 0);
}