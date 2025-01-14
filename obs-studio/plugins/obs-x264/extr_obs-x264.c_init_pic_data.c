
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ i_csp; int i_plane; int* i_stride; int * plane; } ;
struct TYPE_8__ {TYPE_2__ img; int i_pts; } ;
typedef TYPE_3__ x264_picture_t ;
struct TYPE_6__ {scalar_t__ i_csp; } ;
struct obs_x264 {TYPE_1__ params; } ;
struct encoder_frame {int * data; scalar_t__* linesize; int pts; } ;


 scalar_t__ X264_CSP_I420 ;
 scalar_t__ X264_CSP_I444 ;
 scalar_t__ X264_CSP_NV12 ;
 int x264_picture_init (TYPE_3__*) ;

__attribute__((used)) static inline void init_pic_data(struct obs_x264 *obsx264, x264_picture_t *pic,
     struct encoder_frame *frame)
{
 x264_picture_init(pic);

 pic->i_pts = frame->pts;
 pic->img.i_csp = obsx264->params.i_csp;

 if (obsx264->params.i_csp == X264_CSP_NV12)
  pic->img.i_plane = 2;
 else if (obsx264->params.i_csp == X264_CSP_I420)
  pic->img.i_plane = 3;
 else if (obsx264->params.i_csp == X264_CSP_I444)
  pic->img.i_plane = 3;

 for (int i = 0; i < pic->img.i_plane; i++) {
  pic->img.i_stride[i] = (int)frame->linesize[i];
  pic->img.plane[i] = frame->data[i];
 }
}
