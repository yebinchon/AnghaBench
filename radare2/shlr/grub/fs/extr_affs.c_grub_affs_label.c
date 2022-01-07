
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct grub_affs_file {int namelen; scalar_t__ name; } ;
struct grub_affs_data {int blocksize; int disk; } ;
typedef scalar_t__ grub_err_t ;
typedef TYPE_1__* grub_disk_t ;
typedef TYPE_2__* grub_device_t ;
typedef int file ;
struct TYPE_6__ {TYPE_1__* disk; } ;
struct TYPE_5__ {int total_sectors; } ;


 int GRUB_AFFS_FILE_LOCATION ;
 int GRUB_DISK_SECTOR_SIZE ;
 struct grub_affs_data* grub_affs_mount (TYPE_1__*) ;
 int grub_disk_read (int ,int,int,int,struct grub_affs_file*) ;
 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 scalar_t__ grub_errno ;
 int grub_free (struct grub_affs_data*) ;
 char* grub_strndup (char*,int ) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_affs_label (grub_device_t device, char **label)
{
  struct grub_affs_data *data;
  struct grub_affs_file file;
  grub_disk_t disk = device->disk;

  grub_dl_ref (my_mod);

  data = grub_affs_mount (disk);
  if (data)
    {


      grub_disk_read (data->disk, disk->total_sectors >> 1,
        data->blocksize * (GRUB_DISK_SECTOR_SIZE
      - GRUB_AFFS_FILE_LOCATION),
        sizeof (file), &file);
      if (grub_errno)
 return 0;

      *label = grub_strndup ((char *) (file.name), file.namelen);
    }
  else
    *label = 0;

  grub_dl_unref (my_mod);

  grub_free (data);

  return grub_errno;
}
