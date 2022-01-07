
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_standard {int id; scalar_t__ index; scalar_t__ name; } ;
typedef int obs_property_t ;


 int VIDIOC_ENUMSTD ;
 char* obs_module_text (char*) ;
 int obs_property_list_add_int (int *,char*,int) ;
 int obs_property_list_clear (int *) ;
 scalar_t__ v4l2_ioctl (int,int ,struct v4l2_standard*) ;

__attribute__((used)) static void v4l2_standard_list(int dev, obs_property_t *prop)
{
 struct v4l2_standard std;
 std.index = 0;

 obs_property_list_clear(prop);

 obs_property_list_add_int(prop, obs_module_text("LeaveUnchanged"), -1);

 while (v4l2_ioctl(dev, VIDIOC_ENUMSTD, &std) == 0) {
  obs_property_list_add_int(prop, (char *)std.name, std.id);
  std.index++;
 }
}
