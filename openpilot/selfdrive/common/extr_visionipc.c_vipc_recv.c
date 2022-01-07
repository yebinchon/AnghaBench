
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int p ;
struct TYPE_5__ {int d; int type; int member_0; } ;
typedef TYPE_1__ VisionPacketWire ;
struct TYPE_6__ {int d; int type; int num_fds; scalar_t__ fds; int member_0; } ;
typedef TYPE_2__ VisionPacket ;


 int VIPC_MAX_FDS ;
 int errno ;
 int ipc_sendrecv_with_fds (int,int,TYPE_1__*,int,int*,int ,int *) ;
 int printf (char*,char*) ;
 char* strerror (int ) ;

int vipc_recv(int fd, VisionPacket *out_p) {
  VisionPacketWire p = {0};
  VisionPacket p2 = {0};
  int ret = ipc_sendrecv_with_fds(0, fd, &p, sizeof(p), (int*)p2.fds, VIPC_MAX_FDS, &p2.num_fds);
  if (ret < 0) {
    printf("vipc_recv err: %s\n", strerror(errno));
  } else {
    p2.type = p.type;
    p2.d = p.d;
    *out_p = p2;
  }
  return ret;
}
