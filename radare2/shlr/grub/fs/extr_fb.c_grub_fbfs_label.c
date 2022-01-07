
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_err_t ;
typedef int grub_device_t ;


 int GRUB_ERR_NONE ;

__attribute__((used)) static grub_err_t
grub_fbfs_label (grub_device_t device ,
   char **label)
{
  *label = 0;
  return GRUB_ERR_NONE;
}
