
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; int ctx; int buf_cl; scalar_t__ handle; } ;
typedef TYPE_1__ VisionBuf ;


 int assert (int) ;
 int clReleaseMemObject (int ) ;
 int clSVMFree (int ,int ) ;
 int free (int ) ;

void visionbuf_free(const VisionBuf* buf) {
  if (buf->handle) {
    free(buf->addr);
  } else {
    int err = clReleaseMemObject(buf->buf_cl);
    assert(err == 0);



    free(buf->addr);

  }
}
