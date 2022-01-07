
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buf_len; } ;
typedef TYPE_1__ VisionStreamBufs ;
struct TYPE_6__ {int fd; int * addr; int len; } ;
typedef TYPE_2__ VIPCBuf ;


 int * MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int assert (int) ;
 int close (int) ;
 int * mmap (int *,int ,int,int ,int,int ) ;
 int munmap (int *,int ) ;

void vipc_bufs_load(VIPCBuf *bufs, const VisionStreamBufs *stream_bufs,
                     int num_fds, const int* fds) {
  for (int i=0; i<num_fds; i++) {
    if (bufs[i].addr) {
      munmap(bufs[i].addr, bufs[i].len);
      bufs[i].addr = ((void*)0);
      close(bufs[i].fd);
    }
    bufs[i].fd = fds[i];
    bufs[i].len = stream_bufs->buf_len;
    bufs[i].addr = mmap(((void*)0), bufs[i].len,
                        PROT_READ | PROT_WRITE,
                        MAP_SHARED, bufs[i].fd, 0);

    assert(bufs[i].addr != MAP_FAILED);
  }
}
