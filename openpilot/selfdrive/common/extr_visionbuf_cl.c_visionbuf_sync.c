
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int copy_q; int addr; int len; int buf_cl; } ;
typedef TYPE_1__ VisionBuf ;


 int CL_FALSE ;
 int VISIONBUF_SYNC_FROM_DEVICE ;
 int assert (int) ;
 int clEnqueueReadBuffer (int ,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int clEnqueueWriteBuffer (int ,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int clFinish (int ) ;

void visionbuf_sync(const VisionBuf* buf, int dir) {
  int err = 0;
  if (!buf->buf_cl) return;


  if (dir == VISIONBUF_SYNC_FROM_DEVICE) {
    err = clEnqueueReadBuffer(buf->copy_q, buf->buf_cl, CL_FALSE, 0, buf->len, buf->addr, 0, ((void*)0), ((void*)0));
  } else {
    err = clEnqueueWriteBuffer(buf->copy_q, buf->buf_cl, CL_FALSE, 0, buf->len, buf->addr, 0, ((void*)0), ((void*)0));
  }
  assert(err == 0);
  clFinish(buf->copy_q);

}
