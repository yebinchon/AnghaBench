
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numerator; int denominator; } ;
struct TYPE_5__ {TYPE_1__ timeperframe; } ;
struct TYPE_6__ {TYPE_2__ capture; } ;
struct v4l2_streamparm {TYPE_3__ parm; int type; } ;
typedef int int_fast32_t ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VIDIOC_G_PARM ;
 int VIDIOC_S_PARM ;
 scalar_t__ v4l2_ioctl (int,int ,struct v4l2_streamparm*) ;
 int v4l2_pack_tuple (int,int) ;
 int v4l2_unpack_tuple (int*,int*,int) ;

int_fast32_t v4l2_set_framerate(int_fast32_t dev, int *framerate)
{
 bool set = 0;
 int num, denom;
 struct v4l2_streamparm par;

 if (!dev || !framerate)
  return -1;


 par.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

 if (v4l2_ioctl(dev, VIDIOC_G_PARM, &par) < 0)
  return -1;

 if (*framerate != -1) {
  v4l2_unpack_tuple(&num, &denom, *framerate);
  par.parm.capture.timeperframe.numerator = num;
  par.parm.capture.timeperframe.denominator = denom;
  set = 1;
 }

 if (set && (v4l2_ioctl(dev, VIDIOC_S_PARM, &par) < 0))
  return -1;

 *framerate = v4l2_pack_tuple(par.parm.capture.timeperframe.numerator,
         par.parm.capture.timeperframe.denominator);
 return 0;
}
