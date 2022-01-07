
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_fast32_t ;


 int VIDIOC_G_INPUT ;
 int VIDIOC_S_INPUT ;
 int v4l2_ioctl (int,int ,int*) ;

int_fast32_t v4l2_set_input(int_fast32_t dev, int *input)
{
 if (!dev || !input)
  return -1;

 return (*input == -1) ? v4l2_ioctl(dev, VIDIOC_G_INPUT, input)
         : v4l2_ioctl(dev, VIDIOC_S_INPUT, input);
}
