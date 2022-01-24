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
typedef  int /*<<< orphan*/  cl_mem ;
typedef  int /*<<< orphan*/  cl_event ;
typedef  int /*<<< orphan*/  cl_command_queue ;
struct TYPE_3__ {int width; int height; int /*<<< orphan*/  rgb_to_yuv_krnl; } ;
typedef  TYPE_1__ RGBToYUVState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,size_t const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

void FUNC5(RGBToYUVState* s, cl_command_queue q, cl_mem rgb_cl, cl_mem yuv_cl) {
  int err = 0;
  err = FUNC3(s->rgb_to_yuv_krnl, 0, sizeof(cl_mem), &rgb_cl);
  FUNC0(err == 0);
  err = FUNC3(s->rgb_to_yuv_krnl, 1, sizeof(cl_mem), &yuv_cl);
  FUNC0(err == 0);
  const size_t work_size[2] = {
    (size_t)(s->width + (s->width % 4 == 0 ? 0 : (4 - s->width % 4))) / 4, 
    (size_t)(s->height + (s->height % 4 == 0 ? 0 : (4 - s->height % 4))) / 4
  };
  cl_event event;
  err = FUNC1(q, s->rgb_to_yuv_krnl, 2, NULL, &work_size[0], NULL, 0, 0, &event);
  FUNC0(err == 0);
  FUNC4(1, &event);
  FUNC2(event);
}