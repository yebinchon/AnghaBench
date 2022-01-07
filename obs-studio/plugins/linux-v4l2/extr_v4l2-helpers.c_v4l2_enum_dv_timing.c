
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_enum_dv_timings {int index; int timings; } ;
struct v4l2_dv_timings {int dummy; } ;
typedef int iter ;
typedef int int_fast32_t ;


 int UNUSED_PARAMETER (int) ;
 int VIDIOC_ENUM_DV_TIMINGS ;
 int memcpy (struct v4l2_dv_timings*,int *,int) ;
 int memset (struct v4l2_enum_dv_timings*,int ,int) ;
 scalar_t__ v4l2_ioctl (int,int ,struct v4l2_enum_dv_timings*) ;

int_fast32_t v4l2_enum_dv_timing(int_fast32_t dev, struct v4l2_dv_timings *dvt,
     int index)
{

 UNUSED_PARAMETER(dev);
 UNUSED_PARAMETER(dvt);
 UNUSED_PARAMETER(index);
 return -1;
}
