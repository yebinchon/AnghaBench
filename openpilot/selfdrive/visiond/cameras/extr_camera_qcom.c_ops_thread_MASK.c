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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zsock_t ;
typedef  int /*<<< orphan*/  zpoller_t ;
typedef  int /*<<< orphan*/  zmq_msg_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  cmsg ;
struct TYPE_8__ {int last_sag_ts; float last_sag_acc_z; } ;
struct TYPE_7__ {int type; scalar_t__ camera_num; int /*<<< orphan*/  grey_frac; } ;
struct TYPE_6__ {TYPE_4__ rear; TYPE_4__ front; } ;
typedef  TYPE_1__ DualCameraState ;
typedef  TYPE_2__ CameraMsg ;

/* Variables and functions */
 int CAMERA_MSG_AUTOEXPOSE ; 
 int FUNC0 (void*,float*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  do_exit ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 
 int /*<<< orphan*/ * FUNC17 (char*,char*) ; 
 void* FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void* FUNC19(void* arg) {
  int err;
  DualCameraState *s = (DualCameraState*)arg;

  FUNC6("camera_settings");

  zsock_t *cameraops = FUNC16("@inproc://cameraops");
  FUNC1(*cameraops);

  zsock_t *sensor_sock = FUNC17(">tcp://127.0.0.1:8003", "");
  FUNC1(*sensor_sock);

  zsock_t *terminate = FUNC17(">inproc://terminate", "");
  FUNC1(*terminate);

  zpoller_t *poller = FUNC13(cameraops, sensor_sock, terminate, NULL);
  FUNC1(*poller);

  while (!do_exit) {

    zsock_t *which = (zsock_t*)FUNC14(poller, -1);
    if (which == terminate || which == NULL) {
      break;
    }
    void* sockraw = FUNC18(which);

    if (which == cameraops) {
      zmq_msg_t msg;
      err = FUNC9(&msg);
      FUNC1(err == 0);

      err = FUNC10(&msg, sockraw, 0);
      FUNC1(err >= 0);

      CameraMsg cmsg;
      if (FUNC11(&msg) == sizeof(cmsg)) {
        FUNC4(&cmsg, FUNC8(&msg), FUNC11(&msg));

        //LOGD("cameraops %d", cmsg.type);

        if (cmsg.type == CAMERA_MSG_AUTOEXPOSE) {
          if (cmsg.camera_num == 0) {
            FUNC2(&s->rear, cmsg.grey_frac);
            FUNC3(&s->rear);
          } else {
            FUNC2(&s->front, cmsg.grey_frac);
          }
        } else if (cmsg.type == -1) {
          break;
        }
      }

      FUNC7(&msg);

    } else if (which == sensor_sock) {
      float vs[3] = {0.0};
      bool got_accel = FUNC0(sockraw, vs);

      uint64_t ts = FUNC5();
      if (got_accel && ts - s->rear.last_sag_ts > 10000000) { // 10 ms
        s->rear.last_sag_ts = ts;
        s->rear.last_sag_acc_z = -vs[2];
      }
    }
  }

  FUNC12(&poller);
  FUNC15(&cameraops);
  FUNC15(&sensor_sock);
  FUNC15(&terminate);

  return NULL;
}