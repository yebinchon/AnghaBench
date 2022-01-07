
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int dirty_buf; } ;
struct TYPE_5__ {TYPE_1__* ss; int isp_fd; } ;
struct TYPE_4__ {TYPE_3__* qbuf_info; } ;
typedef TYPE_2__ CameraState ;


 int VIDIOC_MSM_ISP_ENQUEUE_BUF ;
 int ioctl (int ,int ,TYPE_3__*) ;

__attribute__((used)) static void camera_release_buffer(void* cookie, int buf_idx) {
  CameraState *s = cookie;

  s->ss[0].qbuf_info[buf_idx].dirty_buf = 1;
  ioctl(s->isp_fd, VIDIOC_MSM_ISP_ENQUEUE_BUF, &s->ss[0].qbuf_info[buf_idx]);
}
