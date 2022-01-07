
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int msg ;
struct TYPE_6__ {float grey_frac; int camera_num; int type; } ;
struct TYPE_5__ {int ops_sock; int camera_num; } ;
typedef TYPE_1__ CameraState ;
typedef TYPE_2__ CameraMsg ;


 int CAMERA_MSG_AUTOEXPOSE ;
 int ZMQ_DONTWAIT ;
 int zmq_send (int ,TYPE_2__*,int,int ) ;

void camera_autoexposure(CameraState *s, float grey_frac) {
  CameraMsg msg = {
    .type = CAMERA_MSG_AUTOEXPOSE,
    .camera_num = s->camera_num,
    .grey_frac = grey_frac,
  };

  zmq_send(s->ops_sock, &msg, sizeof(msg), ZMQ_DONTWAIT);
}
