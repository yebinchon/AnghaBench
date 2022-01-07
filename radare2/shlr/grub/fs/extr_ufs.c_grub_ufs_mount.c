
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grub_ufs_sblock {int dummy; } ;
struct TYPE_2__ {int magic; } ;
struct grub_ufs_data {int be; TYPE_1__ sblock; scalar_t__ linknest; int disk; } ;
typedef int grub_disk_t ;


 int GRUB_ERR_BAD_FS ;
 scalar_t__ GRUB_ERR_NONE ;
 scalar_t__ GRUB_ERR_OUT_OF_RANGE ;
 scalar_t__ GRUB_UFS_MAGIC ;
 scalar_t__ grub_be_to_cpu32 (int ) ;
 int grub_disk_read (int ,int,int ,int,TYPE_1__*) ;
 scalar_t__ grub_errno ;
 int grub_error (int ,char*) ;
 int grub_free (struct grub_ufs_data*) ;
 scalar_t__ grub_le_to_cpu32 (int ) ;
 struct grub_ufs_data* grub_malloc (int) ;
 int* sblocklist ;

__attribute__((used)) static struct grub_ufs_data *
grub_ufs_mount (grub_disk_t disk)
{
  struct grub_ufs_data *data;
  int *sblklist = sblocklist;

  data = grub_malloc (sizeof (struct grub_ufs_data));
  if (!data)
    return 0;

  data->disk = disk;
  data->linknest = 0;

  while (*sblklist != -1)
    {
      grub_disk_read (disk, *sblklist, 0, sizeof (struct grub_ufs_sblock),
        &data->sblock);
      if (grub_errno)
 goto fail;

      if (grub_le_to_cpu32 (data->sblock.magic) == GRUB_UFS_MAGIC)
 {
   data->be = 0;
   return data;
 }
      else if (grub_be_to_cpu32 (data->sblock.magic) == GRUB_UFS_MAGIC)
 {
   data->be = 1;
   return data;
 }
      sblklist++;
    }

 fail:

  if (grub_errno == GRUB_ERR_NONE || grub_errno == GRUB_ERR_OUT_OF_RANGE)
    {



      grub_error (GRUB_ERR_BAD_FS, "not an ufs1 filesystem");

    }

  grub_free (data);

  return 0;
}
