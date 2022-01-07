
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grub_hfs_filerec {scalar_t__ type; int fileid; int size; int extents; int member_0; } ;
struct grub_hfs_data {void* fileid; void* size; int extents; } ;
struct grub_file {struct grub_hfs_data* data; scalar_t__ offset; void* size; TYPE_1__* device; } ;
typedef int grub_hfs_datarecord_t ;
typedef int grub_err_t ;
struct TYPE_2__ {int disk; } ;


 int GRUB_ERR_BAD_FILE_TYPE ;
 scalar_t__ GRUB_HFS_FILETYPE_FILE ;
 void* grub_be_to_cpu32 (int ) ;
 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 int grub_error (int ,char*) ;
 int grub_free (struct grub_hfs_data*) ;
 scalar_t__ grub_hfs_find_dir (struct grub_hfs_data*,char const*,struct grub_hfs_filerec*,int ) ;
 struct grub_hfs_data* grub_hfs_mount (int ) ;
 int grub_memcpy (int ,int ,int) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_hfs_open (struct grub_file *file, const char *name)
{
  struct grub_hfs_data *data;
  struct grub_hfs_filerec frec = {0};

  grub_dl_ref (my_mod);

  data = grub_hfs_mount (file->device->disk);

  if (grub_hfs_find_dir (data, name, &frec, 0))
    {
      grub_free (data);
      grub_dl_unref (my_mod);
      return grub_errno;
    }

  if (frec.type != GRUB_HFS_FILETYPE_FILE)
    {
      grub_free (data);
      grub_error (GRUB_ERR_BAD_FILE_TYPE, "not a file");
      grub_dl_unref (my_mod);
      return grub_errno;
    }

  grub_memcpy (data->extents, frec.extents, sizeof (grub_hfs_datarecord_t));
  file->size = grub_be_to_cpu32 (frec.size);
  data->size = grub_be_to_cpu32 (frec.size);
  data->fileid = grub_be_to_cpu32 (frec.fileid);
  file->offset = 0;

  file->data = data;

  return 0;
}
