
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* grub_file_t ;
typedef int grub_err_t ;
struct TYPE_3__ {int data; } ;


 int grub_errno ;
 int grub_free (int ) ;

__attribute__((used)) static grub_err_t
grub_fs_blocklist_close (grub_file_t file)
{
  grub_free (file->data);
  return grub_errno;
}
