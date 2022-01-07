
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_ntfs_data {int cmft; int mmft; } ;
typedef TYPE_1__* grub_file_t ;
typedef int grub_err_t ;
struct TYPE_3__ {struct grub_ntfs_data* data; } ;


 int free_file (int *) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 int grub_free (struct grub_ntfs_data*) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_ntfs_close (grub_file_t file)
{
  struct grub_ntfs_data *data;

  data = file->data;

  if (data)
    {
      free_file (&data->mmft);
      free_file (&data->cmft);
      grub_free (data);
    }

  grub_dl_unref (my_mod);

  return grub_errno;
}
