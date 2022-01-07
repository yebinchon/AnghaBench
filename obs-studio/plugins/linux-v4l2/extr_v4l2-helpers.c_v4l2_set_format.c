
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int pixelformat; int bytesperline; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; int type; } ;
typedef int int_fast32_t ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VIDIOC_G_FMT ;
 int VIDIOC_S_FMT ;
 scalar_t__ v4l2_ioctl (int,int ,struct v4l2_format*) ;
 int v4l2_pack_tuple (int,int) ;
 int v4l2_unpack_tuple (int*,int*,int) ;

int_fast32_t v4l2_set_format(int_fast32_t dev, int *resolution,
        int *pixelformat, int *bytesperline)
{
 bool set = 0;
 int width, height;
 struct v4l2_format fmt;

 if (!dev || !resolution || !pixelformat || !bytesperline)
  return -1;


 fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

 if (v4l2_ioctl(dev, VIDIOC_G_FMT, &fmt) < 0)
  return -1;

 if (*resolution != -1) {
  v4l2_unpack_tuple(&width, &height, *resolution);
  fmt.fmt.pix.width = width;
  fmt.fmt.pix.height = height;
  set = 1;
 }

 if (*pixelformat != -1) {
  fmt.fmt.pix.pixelformat = *pixelformat;
  set = 1;
 }

 if (set && (v4l2_ioctl(dev, VIDIOC_S_FMT, &fmt) < 0))
  return -1;

 *resolution = v4l2_pack_tuple(fmt.fmt.pix.width, fmt.fmt.pix.height);
 *pixelformat = fmt.fmt.pix.pixelformat;
 *bytesperline = fmt.fmt.pix.bytesperline;
 return 0;
}
