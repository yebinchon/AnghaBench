#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct msm_ispif_param_data {int num; TYPE_1__* entries; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {int num_vfe; } ;
struct ispif_cfg_data {int csid_version; int /*<<< orphan*/  cfg_type; struct msm_ispif_param_data params; TYPE_3__ vfe_info; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  ispif_cfg_data ;
typedef  int /*<<< orphan*/  VisionBuf ;
struct TYPE_15__ {TYPE_2__* ss; } ;
struct TYPE_14__ {scalar_t__ device; TYPE_6__ rear; TYPE_6__ front; void* ispif_fd; } ;
struct TYPE_12__ {int /*<<< orphan*/ * bufs; } ;
struct TYPE_11__ {int vfe_intf; int num_cids; int* cids; int csid; void* intftype; } ;
typedef  TYPE_4__ DualCameraState ;

/* Variables and functions */
 scalar_t__ DEVICE_LP3 ; 
 int /*<<< orphan*/  ISPIF_CFG ; 
 int /*<<< orphan*/  ISPIF_INIT ; 
 int /*<<< orphan*/  ISPIF_SET_VFE_INFO ; 
 int /*<<< orphan*/  ISPIF_START_FRAME_BOUNDARY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 void* RDI0 ; 
 void* RDI1 ; 
 void* RDI2 ; 
 int /*<<< orphan*/  VIDIOC_MSM_ISPIF_CFG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int FUNC7 (void*,int /*<<< orphan*/ ,struct ispif_cfg_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct ispif_cfg_data*,int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 

void FUNC12(DualCameraState *s, VisionBuf *camera_bufs_rear, VisionBuf *camera_bufs_focus, VisionBuf *camera_bufs_stats, VisionBuf *camera_bufs_front) {
  int err;

  struct ispif_cfg_data ispif_cfg_data = {0};

  struct msm_ispif_param_data ispif_params = {0};
  ispif_params.num = 4;
  // rear camera
  ispif_params.entries[0].vfe_intf = 0;
  ispif_params.entries[0].intftype = RDI0;
  ispif_params.entries[0].num_cids = 1;
  ispif_params.entries[0].cids[0] = 0;
  ispif_params.entries[0].csid = 0;
  // front camera
  ispif_params.entries[1].vfe_intf = 1;
  ispif_params.entries[1].intftype = RDI0;
  ispif_params.entries[1].num_cids = 1;
  ispif_params.entries[1].cids[0] = 0;
  ispif_params.entries[1].csid = 2;
  // rear camera (focus)
  ispif_params.entries[2].vfe_intf = 0;
  ispif_params.entries[2].intftype = RDI1;
  ispif_params.entries[2].num_cids = 1;
  ispif_params.entries[2].cids[0] = 1;
  ispif_params.entries[2].csid = 0;
  // rear camera (stats, for AE)
  ispif_params.entries[3].vfe_intf = 0;
  ispif_params.entries[3].intftype = RDI2;
  ispif_params.entries[3].num_cids = 1;
  ispif_params.entries[3].cids[0] = 2;
  ispif_params.entries[3].csid = 0;

  FUNC1(*camera_bufs_rear);
  FUNC1(*camera_bufs_front);

  int msmcfg_fd = FUNC9("/dev/media0", O_RDWR | O_NONBLOCK);
  FUNC1(msmcfg_fd >= 0);

  FUNC11(s);

  int v4l_fd = FUNC9("/dev/video0", O_RDWR | O_NONBLOCK);
  FUNC1(v4l_fd >= 0);

  if (s->device == DEVICE_LP3) {
    s->ispif_fd = FUNC9("/dev/v4l-subdev15", O_RDWR | O_NONBLOCK);
  } else {
    s->ispif_fd = FUNC9("/dev/v4l-subdev16", O_RDWR | O_NONBLOCK);
  }
  FUNC1(s->ispif_fd >= 0);

  // ISPIF: stop
  // memset(&ispif_cfg_data, 0, sizeof(ispif_cfg_data));
  // ispif_cfg_data.cfg_type = ISPIF_STOP_FRAME_BOUNDARY;
  // ispif_cfg_data.params = ispif_params;
  // err = ioctl(s->ispif_fd, VIDIOC_MSM_ISPIF_CFG, &ispif_cfg_data);
  // LOG("ispif stop: %d", err);

  FUNC0("*** open front ***");
  s->front.ss[0].bufs = camera_bufs_front;
  FUNC2(&s->front, false);

  FUNC0("*** open rear ***");
  s->rear.ss[0].bufs = camera_bufs_rear;
  s->rear.ss[1].bufs = camera_bufs_focus;
  s->rear.ss[2].bufs = camera_bufs_stats;
  FUNC2(&s->rear, true);

  if (FUNC6("CAMERA_TEST")) {
    FUNC3(s);
    FUNC4(0);
  }

  // ISPIF: set vfe info
  FUNC8(&ispif_cfg_data, 0, sizeof(ispif_cfg_data));
  ispif_cfg_data.cfg_type = ISPIF_SET_VFE_INFO;
  ispif_cfg_data.vfe_info.num_vfe = 2;
  err = FUNC7(s->ispif_fd, VIDIOC_MSM_ISPIF_CFG, &ispif_cfg_data);
  FUNC0("ispif set vfe info: %d", err);

  // ISPIF: setup
  FUNC8(&ispif_cfg_data, 0, sizeof(ispif_cfg_data));
  ispif_cfg_data.cfg_type = ISPIF_INIT;
  ispif_cfg_data.csid_version = 0x30050000; //CSID_VERSION_V35
  err = FUNC7(s->ispif_fd, VIDIOC_MSM_ISPIF_CFG, &ispif_cfg_data);
  FUNC0("ispif setup: %d", err);

  FUNC8(&ispif_cfg_data, 0, sizeof(ispif_cfg_data));
  ispif_cfg_data.cfg_type = ISPIF_CFG;
  ispif_cfg_data.params = ispif_params;

  err = FUNC7(s->ispif_fd, VIDIOC_MSM_ISPIF_CFG, &ispif_cfg_data);
  FUNC0("ispif cfg: %d", err);

  ispif_cfg_data.cfg_type = ISPIF_START_FRAME_BOUNDARY;
  err = FUNC7(s->ispif_fd, VIDIOC_MSM_ISPIF_CFG, &ispif_cfg_data);
  FUNC0("ispif start_frame_boundary: %d", err);

  FUNC5(&s->front);
  FUNC10(&s->rear);
}