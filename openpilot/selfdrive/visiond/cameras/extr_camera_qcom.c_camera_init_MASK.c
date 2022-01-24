#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zsock_t ;
typedef  void* uint32_t ;
struct TYPE_8__ {scalar_t__ frame_width; int frame_height; int frame_stride; } ;
struct TYPE_7__ {int camera_num; int camera_id; int frame_size; unsigned int max_gain; unsigned int fps; int /*<<< orphan*/  frame_info_lock; int /*<<< orphan*/  camera_tb; int /*<<< orphan*/  ops_sock; void* line_length_pclk; void* pixel_clock; TYPE_4__ ci; } ;
typedef  TYPE_1__ CameraState ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FRAME_BUF_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  camera_release_buffer ; 
 TYPE_4__* cameras_supported ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(CameraState *s, int camera_id, int camera_num,
                        uint32_t pixel_clock, uint32_t line_length_pclk,
                        unsigned int max_gain, unsigned int fps) {
  FUNC2(s, 0, sizeof(*s));

  s->camera_num = camera_num;
  s->camera_id = camera_id;

  FUNC1(camera_id < FUNC0(cameras_supported));
  s->ci = cameras_supported[camera_id];
  FUNC1(s->ci.frame_width != 0);
  s->frame_size = s->ci.frame_height * s->ci.frame_stride;

  s->pixel_clock = pixel_clock;
  s->line_length_pclk = line_length_pclk;
  s->max_gain = max_gain;
  s->fps = fps;

  zsock_t *ops_sock = FUNC5(">inproc://cameraops");
  FUNC1(*ops_sock);
  s->ops_sock = FUNC6(ops_sock);

  FUNC4(&s->camera_tb, FRAME_BUF_COUNT, "frame",
    camera_release_buffer, s);

  FUNC3(&s->frame_info_lock, NULL);
}