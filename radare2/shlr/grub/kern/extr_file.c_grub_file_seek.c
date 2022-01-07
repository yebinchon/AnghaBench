
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ grub_off_t ;
typedef TYPE_1__* grub_file_t ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ offset; } ;


 int GRUB_ERR_OUT_OF_RANGE ;
 int grub_error (int ,char*) ;

grub_off_t
grub_file_seek (grub_file_t file, grub_off_t offset)
{
  grub_off_t old;

  if (offset > file->size)
    {
      grub_error (GRUB_ERR_OUT_OF_RANGE,
    "attempt to seek outside of the file");
      return -1;
    }

  old = file->offset;
  file->offset = offset;
  return old;
}
