
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int p ;
struct TYPE_4__ {int d; int type; } ;
typedef TYPE_1__ VisionPacketWire ;
struct TYPE_5__ {int num_fds; scalar_t__ fds; int d; int type; } ;
typedef TYPE_2__ VisionPacket ;


 int VIPC_MAX_FDS ;
 int assert (int) ;
 int ipc_sendrecv_with_fds (int,int,void*,int,int*,int ,int *) ;

int vipc_send(int fd, const VisionPacket *p2) {
  assert(p2->num_fds <= VIPC_MAX_FDS);

  VisionPacketWire p = {
    .type = p2->type,
    .d = p2->d,
  };
  return ipc_sendrecv_with_fds(1, fd, (void*)&p, sizeof(p), (int*)p2->fds, p2->num_fds, ((void*)0));
}
