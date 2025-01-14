
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_uint16_t ;
typedef enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;


 int FILETYPE_INO_DIRECTORY ;
 int FILETYPE_INO_MASK ;
 int FILETYPE_INO_REG ;
 int FILETYPE_INO_SYMLINK ;
 int GRUB_FSHELP_DIR ;
 int GRUB_FSHELP_REG ;
 int GRUB_FSHELP_SYMLINK ;
 int GRUB_FSHELP_UNKNOWN ;
 int grub_be_to_cpu16 (int ) ;

__attribute__((used)) static enum grub_fshelp_filetype
grub_xfs_mode_to_filetype (grub_uint16_t mode)
{
  if ((grub_be_to_cpu16 (mode)
       & FILETYPE_INO_MASK) == FILETYPE_INO_DIRECTORY)
    return GRUB_FSHELP_DIR;
  else if ((grub_be_to_cpu16 (mode)
     & FILETYPE_INO_MASK) == FILETYPE_INO_SYMLINK)
    return GRUB_FSHELP_SYMLINK;
  else if ((grub_be_to_cpu16 (mode)
     & FILETYPE_INO_MASK) == FILETYPE_INO_REG)
    return GRUB_FSHELP_REG;
  return GRUB_FSHELP_UNKNOWN;
}
