
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_fast32_t ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int LOG_ERROR ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VIDIOC_STREAMOFF ;
 int blog (int ,char*) ;
 scalar_t__ v4l2_ioctl (int,int ,int*) ;

int_fast32_t v4l2_stop_capture(int_fast32_t dev)
{
 enum v4l2_buf_type type;

 type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 if (v4l2_ioctl(dev, VIDIOC_STREAMOFF, &type) < 0) {
  blog(LOG_ERROR, "unable to stop stream");
  return -1;
 }

 return 0;
}
