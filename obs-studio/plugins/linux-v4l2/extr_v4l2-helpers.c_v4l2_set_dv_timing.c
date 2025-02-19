
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dv_timings {int dummy; } ;
typedef int int_fast32_t ;


 int VIDIOC_S_DV_TIMINGS ;
 scalar_t__ v4l2_enum_dv_timing (int,struct v4l2_dv_timings*,int) ;
 scalar_t__ v4l2_ioctl (int,int ,struct v4l2_dv_timings*) ;

int_fast32_t v4l2_set_dv_timing(int_fast32_t dev, int *timing)
{
 if (!dev || !timing)
  return -1;

 if (*timing == -1)
  return 0;

 struct v4l2_dv_timings dvt;

 if (v4l2_enum_dv_timing(dev, &dvt, *timing) < 0)
  return -1;

 if (v4l2_ioctl(dev, VIDIOC_S_DV_TIMINGS, &dvt) < 0)
  return -1;

 return 0;
}
