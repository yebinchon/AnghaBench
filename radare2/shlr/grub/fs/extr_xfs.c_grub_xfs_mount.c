
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct grub_xfs_sblock {int dummy; } ;
struct grub_xfs_inode {int dummy; } ;
struct TYPE_3__ {int inode_read; int inode; int ino; struct grub_xfs_data* data; } ;
struct TYPE_4__ {int log2_inode; int agsize; int bsize; int rootino; scalar_t__ magic; } ;
struct grub_xfs_data {TYPE_1__ diropen; scalar_t__ pos; int disk; TYPE_2__ sblock; void* agsize; void* bsize; } ;
typedef int grub_disk_t ;


 int GRUB_ERR_BAD_FS ;
 scalar_t__ GRUB_ERR_OUT_OF_RANGE ;
 void* grub_be_to_cpu32 (int ) ;
 scalar_t__ grub_disk_read (int ,int ,int ,int,TYPE_2__*) ;
 scalar_t__ grub_errno ;
 int grub_error (int ,char*) ;
 int grub_free (struct grub_xfs_data*) ;
 struct grub_xfs_data* grub_realloc (struct grub_xfs_data*,int) ;
 scalar_t__ grub_strncmp (char*,char*,int) ;
 int grub_xfs_read_inode (struct grub_xfs_data*,int ,int *) ;
 struct grub_xfs_data* grub_zalloc (int) ;

__attribute__((used)) static struct grub_xfs_data *
grub_xfs_mount (grub_disk_t disk)
{
  struct grub_xfs_data *data = 0;

  data = grub_zalloc (sizeof (struct grub_xfs_data));
  if (!data)
    return 0;


  if (grub_disk_read (disk, 0, 0,
        sizeof (struct grub_xfs_sblock), &data->sblock))
    goto fail;

  if (grub_strncmp ((char *) (data->sblock.magic), "XFSB", 4))
    {
      grub_error (GRUB_ERR_BAD_FS, "not a XFS filesystem");
      goto fail;
    }

  data = grub_realloc (data,
         sizeof (struct grub_xfs_data)
         - sizeof (struct grub_xfs_inode)
         + (1 << data->sblock.log2_inode));

  if (! data)
    goto fail;

  data->diropen.data = data;
  data->diropen.ino = data->sblock.rootino;
  data->diropen.inode_read = 1;
  data->bsize = grub_be_to_cpu32 (data->sblock.bsize);
  data->agsize = grub_be_to_cpu32 (data->sblock.agsize);

  data->disk = disk;
  data->pos = 0;

  grub_xfs_read_inode (data, data->diropen.ino, &data->diropen.inode);

  return data;
 fail:

  if (grub_errno == GRUB_ERR_OUT_OF_RANGE)
    grub_error (GRUB_ERR_BAD_FS, "not an XFS filesystem");

  grub_free (data);

  return 0;
}
