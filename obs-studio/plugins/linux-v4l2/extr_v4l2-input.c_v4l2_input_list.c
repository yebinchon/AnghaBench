
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {int index; scalar_t__ name; } ;
typedef int obs_property_t ;
typedef int int_fast32_t ;
typedef int in ;


 int LOG_INFO ;
 int VIDIOC_ENUMINPUT ;
 int blog (int ,char*,scalar_t__,int ) ;
 int memset (struct v4l2_input*,int ,int) ;
 int obs_property_list_add_int (int *,char*,int ) ;
 int obs_property_list_clear (int *) ;
 scalar_t__ v4l2_ioctl (int ,int ,struct v4l2_input*) ;

__attribute__((used)) static void v4l2_input_list(int_fast32_t dev, obs_property_t *prop)
{
 struct v4l2_input in;
 memset(&in, 0, sizeof(in));

 obs_property_list_clear(prop);

 while (v4l2_ioctl(dev, VIDIOC_ENUMINPUT, &in) == 0) {
  obs_property_list_add_int(prop, (char *)in.name, in.index);
  blog(LOG_INFO, "Found input '%s' (Index %d)", in.name,
       in.index);
  in.index++;
 }
}
