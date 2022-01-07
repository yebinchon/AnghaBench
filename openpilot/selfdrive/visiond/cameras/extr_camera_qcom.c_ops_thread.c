
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zsock_t ;
typedef int zpoller_t ;
typedef int zmq_msg_t ;
typedef int uint64_t ;
typedef int cmsg ;
struct TYPE_8__ {int last_sag_ts; float last_sag_acc_z; } ;
struct TYPE_7__ {int type; scalar_t__ camera_num; int grey_frac; } ;
struct TYPE_6__ {TYPE_4__ rear; TYPE_4__ front; } ;
typedef TYPE_1__ DualCameraState ;
typedef TYPE_2__ CameraMsg ;


 int CAMERA_MSG_AUTOEXPOSE ;
 int acceleration_from_sensor_sock (void*,float*) ;
 int assert (int) ;
 int do_autoexposure (TYPE_4__*,int ) ;
 int do_autofocus (TYPE_4__*) ;
 int do_exit ;
 int memcpy (TYPE_2__*,int ,int) ;
 int nanos_since_boot () ;
 int set_thread_name (char*) ;
 int zmq_msg_close (int *) ;
 int zmq_msg_data (int *) ;
 int zmq_msg_init (int *) ;
 int zmq_msg_recv (int *,void*,int ) ;
 int zmq_msg_size (int *) ;
 int zpoller_destroy (int **) ;
 int * zpoller_new (int *,int *,int *,int *) ;
 scalar_t__ zpoller_wait (int *,int) ;
 int zsock_destroy (int **) ;
 int * zsock_new_pull (char*) ;
 int * zsock_new_sub (char*,char*) ;
 void* zsock_resolve (int *) ;

__attribute__((used)) static void* ops_thread(void* arg) {
  int err;
  DualCameraState *s = (DualCameraState*)arg;

  set_thread_name("camera_settings");

  zsock_t *cameraops = zsock_new_pull("@inproc://cameraops");
  assert(cameraops);

  zsock_t *sensor_sock = zsock_new_sub(">tcp://127.0.0.1:8003", "");
  assert(sensor_sock);

  zsock_t *terminate = zsock_new_sub(">inproc://terminate", "");
  assert(terminate);

  zpoller_t *poller = zpoller_new(cameraops, sensor_sock, terminate, ((void*)0));
  assert(poller);

  while (!do_exit) {

    zsock_t *which = (zsock_t*)zpoller_wait(poller, -1);
    if (which == terminate || which == ((void*)0)) {
      break;
    }
    void* sockraw = zsock_resolve(which);

    if (which == cameraops) {
      zmq_msg_t msg;
      err = zmq_msg_init(&msg);
      assert(err == 0);

      err = zmq_msg_recv(&msg, sockraw, 0);
      assert(err >= 0);

      CameraMsg cmsg;
      if (zmq_msg_size(&msg) == sizeof(cmsg)) {
        memcpy(&cmsg, zmq_msg_data(&msg), zmq_msg_size(&msg));



        if (cmsg.type == CAMERA_MSG_AUTOEXPOSE) {
          if (cmsg.camera_num == 0) {
            do_autoexposure(&s->rear, cmsg.grey_frac);
            do_autofocus(&s->rear);
          } else {
            do_autoexposure(&s->front, cmsg.grey_frac);
          }
        } else if (cmsg.type == -1) {
          break;
        }
      }

      zmq_msg_close(&msg);

    } else if (which == sensor_sock) {
      float vs[3] = {0.0};
      bool got_accel = acceleration_from_sensor_sock(sockraw, vs);

      uint64_t ts = nanos_since_boot();
      if (got_accel && ts - s->rear.last_sag_ts > 10000000) {
        s->rear.last_sag_ts = ts;
        s->rear.last_sag_acc_z = -vs[2];
      }
    }
  }

  zpoller_destroy(&poller);
  zsock_destroy(&cameraops);
  zsock_destroy(&sensor_sock);
  zsock_destroy(&terminate);

  return ((void*)0);
}
