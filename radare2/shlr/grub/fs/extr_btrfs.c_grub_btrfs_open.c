
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_file {int dummy; } ;
typedef int grub_err_t ;


 int GRUB_ERR_NOT_IMPLEMENTED_YET ;
 int grub_error (int ,char*) ;

__attribute__((used)) static grub_err_t
grub_btrfs_open (struct grub_file *file ,
   const char *name )
{
  return grub_error (GRUB_ERR_NOT_IMPLEMENTED_YET, "only detection is supported for Btrfs");
}
