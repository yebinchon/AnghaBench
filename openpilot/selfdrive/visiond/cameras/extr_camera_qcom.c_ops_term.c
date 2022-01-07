
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zsock_t ;
typedef int msg ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ CameraMsg ;


 int ZMQ_DONTWAIT ;
 int assert (int *) ;
 int zmq_send (int ,TYPE_1__*,int,int ) ;
 int zsock_destroy (int **) ;
 int * zsock_new_push (char*) ;
 int zsock_resolve (int *) ;

__attribute__((used)) static void ops_term() {
  zsock_t *ops_sock = zsock_new_push(">inproc://cameraops");
  assert(ops_sock);

  CameraMsg msg = {.type = -1};
  zmq_send(zsock_resolve(ops_sock), &msg, sizeof(msg), ZMQ_DONTWAIT);

  zsock_destroy(&ops_sock);
}
