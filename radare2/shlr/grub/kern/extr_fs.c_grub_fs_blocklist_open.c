
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct grub_fs_block {int offset; int length; } ;
typedef TYPE_2__* grub_file_t ;
typedef scalar_t__ grub_err_t ;
typedef TYPE_3__* grub_disk_t ;
struct TYPE_7__ {int total_sectors; } ;
struct TYPE_6__ {int size; struct grub_fs_block* data; TYPE_1__* device; } ;
struct TYPE_5__ {TYPE_3__* disk; } ;


 int GRUB_DISK_SECTOR_BITS ;
 int GRUB_ERR_BAD_FILENAME ;
 scalar_t__ GRUB_ERR_NONE ;
 int GRUB_ULONG_MAX ;
 scalar_t__ grub_errno ;
 int grub_error (int ,char*,...) ;
 int grub_free (struct grub_fs_block*) ;
 int grub_isspace (char) ;
 char* grub_strchr (char*,char) ;
 int grub_strtoul (char*,char**,int ) ;
 int grub_strtoull (char*,char**,int ) ;
 struct grub_fs_block* grub_zalloc (int) ;

__attribute__((used)) static grub_err_t
grub_fs_blocklist_open (grub_file_t file, const char *name)
{
  char *p = (char *) name;
  unsigned num = 0;
  unsigned i;
  grub_disk_t disk = file->device->disk;
  struct grub_fs_block *blocks;


  do
    {
      num++;
      p = grub_strchr (p, ',');
      if (p)
 p++;
    }
  while (p);


  blocks = grub_zalloc (sizeof (struct grub_fs_block) * (num + 1));
  if (! blocks)
    return 0;

  file->size = 0;
  p = (char *) name;
  if (! *p)
    {
      blocks[0].offset = 0;
      blocks[0].length = (disk->total_sectors == GRUB_ULONG_MAX) ?
 GRUB_ULONG_MAX : (disk->total_sectors << 9);
      file->size = blocks[0].length;
    }
  else for (i = 0; i < num; i++)
    {
      if (*p != '+')
 {
   blocks[i].offset = grub_strtoull (p, &p, 0);
   if (grub_errno != GRUB_ERR_NONE || *p != '+')
     {
       grub_error (GRUB_ERR_BAD_FILENAME,
     "invalid file name `%s'", name);
       goto fail;
     }
 }

      p++;
      blocks[i].length = grub_strtoul (p, &p, 0);
      if (grub_errno != GRUB_ERR_NONE
   || blocks[i].length == 0
   || (*p && *p != ',' && ! grub_isspace (*p)))
 {
   grub_error (GRUB_ERR_BAD_FILENAME,
        "invalid file name `%s'", name);
   goto fail;
 }

      if (disk->total_sectors < blocks[i].offset + blocks[i].length)
 {
   grub_error (GRUB_ERR_BAD_FILENAME, "beyond the total sectors");
   goto fail;
 }

      blocks[i].offset <<= GRUB_DISK_SECTOR_BITS;
      blocks[i].length <<= GRUB_DISK_SECTOR_BITS;
      file->size += blocks[i].length;
      p++;
    }

  file->data = blocks;

  return GRUB_ERR_NONE;

 fail:
  grub_free (blocks);
  return grub_errno;
}
