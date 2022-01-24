#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct msm_vfe_axi_stream_release_cmd {scalar_t__ stream_handle; int /*<<< orphan*/  cmd; } ;
struct TYPE_7__ {int /*<<< orphan*/  eeprom; int /*<<< orphan*/  isp_fd; TYPE_2__* ss; struct msm_vfe_axi_stream_release_cmd stream_cfg; int /*<<< orphan*/  camera_tb; } ;
struct TYPE_5__ {scalar_t__ axi_stream_handle; } ;
struct TYPE_6__ {TYPE_1__ stream_req; struct msm_vfe_axi_stream_release_cmd buf_request; } ;
typedef  TYPE_2__ StreamState ;
typedef  TYPE_3__ CameraState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  STOP_STREAM ; 
 int /*<<< orphan*/  VIDIOC_MSM_ISP_CFG_STREAM ; 
 int /*<<< orphan*/  VIDIOC_MSM_ISP_RELEASE_BUF ; 
 int /*<<< orphan*/  VIDIOC_MSM_ISP_RELEASE_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct msm_vfe_axi_stream_release_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(CameraState *s) {
  int err;

  FUNC3(&s->camera_tb);

  // ISP: STOP_STREAM
  s->stream_cfg.cmd = STOP_STREAM;
  err = FUNC2(s->isp_fd, VIDIOC_MSM_ISP_CFG_STREAM, &s->stream_cfg);
  FUNC0("isp stop stream: %d", err);

  for (int i = 0; i < 3; i++) {
    StreamState *ss = &s->ss[i];
    if (ss->stream_req.axi_stream_handle != 0) {
      err = FUNC2(s->isp_fd, VIDIOC_MSM_ISP_RELEASE_BUF, &ss->buf_request);
      FUNC0("isp release buf: %d", err);

      struct msm_vfe_axi_stream_release_cmd stream_release = {
        .stream_handle = ss->stream_req.axi_stream_handle,
      };
      err = FUNC2(s->isp_fd, VIDIOC_MSM_ISP_RELEASE_STREAM, &stream_release);
      FUNC0("isp release stream: %d", err);
    }
  }

  FUNC1(s->eeprom);
}