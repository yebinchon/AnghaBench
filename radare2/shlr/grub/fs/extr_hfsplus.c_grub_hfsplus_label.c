
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_err_t ;
typedef int grub_device_t ;


 int GRUB_ERR_NOT_IMPLEMENTED_YET ;
 int grub_error (int ,char*) ;

__attribute__((used)) static grub_err_t
grub_hfsplus_label (grub_device_t device
      , char **label)
{

  return grub_error (GRUB_ERR_NOT_IMPLEMENTED_YET,
       "reading the label of a HFS+ "
       "partition is not implemented");
}
