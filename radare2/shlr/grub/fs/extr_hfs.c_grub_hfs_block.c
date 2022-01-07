
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct grub_hfs_extent_key {void* first_block; int fileid; scalar_t__ forktype; } ;
struct TYPE_6__ {int first_block; } ;
struct grub_hfs_data {int ext_root; TYPE_1__ sblock; } ;
typedef TYPE_2__* grub_hfs_datarecord_t ;
typedef int dr ;
typedef int cache_dr ;
struct TYPE_7__ {int count; int first_block; } ;


 int GRUB_HFS_BLKS ;
 int grub_be_to_cpu16 (int ) ;
 void* grub_cpu_to_be16 (int) ;
 int grub_cpu_to_be32 (int) ;
 scalar_t__ grub_errno ;
 int grub_hfs_find_node (struct grub_hfs_data*,char*,int ,int,char*,int) ;
 int grub_memcpy (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static unsigned int
grub_hfs_block (struct grub_hfs_data *data, grub_hfs_datarecord_t dat,
  int file, int block, int cache)
{
  grub_hfs_datarecord_t dr;
  int pos = 0;
  struct grub_hfs_extent_key key;

  int tree = 0;
  static int cache_file = 0;
  static int cache_pos = 0;
  static grub_hfs_datarecord_t cache_dr;

  grub_memcpy (dr, dat, sizeof (dr));

  key.forktype = 0;
  key.fileid = grub_cpu_to_be32 (file);

  if (cache && cache_file == file && block > cache_pos)
    {
      pos = cache_pos;
      key.first_block = grub_cpu_to_be16 (pos);
      grub_memcpy (dr, cache_dr, sizeof (cache_dr));
    }

  for (;;)
    {
      int i;


      for (i = 0; i < 3; i++)
 {

   if (grub_be_to_cpu16 (dr[i].count) + pos > block)
     {
       int first = grub_be_to_cpu16 (dr[i].first_block);



       if (tree && cache)
  {
    cache_file = file;
    cache_pos = pos;
    grub_memcpy (cache_dr, dr, sizeof (cache_dr));
  }

       return (grub_be_to_cpu16 (data->sblock.first_block)
        + (first + block - pos) * GRUB_HFS_BLKS);
     }


   pos += grub_be_to_cpu16 (dr[i].count);
 }


      key.first_block = grub_cpu_to_be16 (pos);
      tree = 1;
      grub_hfs_find_node (data, (char *) &key, data->ext_root,
     1, (char *) &dr, sizeof (dr));
      if (grub_errno)
 return 0;
    }
}
