
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_fast32_t ;


 int VIDIOC_G_STD ;
 int VIDIOC_S_STD ;
 scalar_t__ v4l2_ioctl (int,int ,int*) ;

int_fast32_t v4l2_set_standard(int_fast32_t dev, int *standard)
{
 if (!dev || !standard)
  return -1;

 if (*standard == -1) {
  if (v4l2_ioctl(dev, VIDIOC_G_STD, standard) < 0)
   return -1;
 } else {
  if (v4l2_ioctl(dev, VIDIOC_S_STD, standard) < 0)
   return -1;
 }

 return 0;
}
