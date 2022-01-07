
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_fat_find_dir_closure {char* dirname; int (* hook ) (char const*,struct grub_dirhook_info*,int ) ;int found; int closure; scalar_t__ call_hook; struct grub_fat_data* data; } ;
struct grub_fat_dir_entry {int attr; int first_cluster_low; int first_cluster_high; int file_size; } ;
struct grub_fat_data {int attr; int file_cluster; unsigned int cur_cluster_num; int file_size; } ;
struct grub_dirhook_info {int dir; int case_insensitive; } ;
typedef int info ;


 int GRUB_FAT_ATTR_DIRECTORY ;
 int GRUB_FAT_ATTR_VOLUME_ID ;
 int grub_le_to_cpu16 (int ) ;
 int grub_le_to_cpu32 (int ) ;
 int grub_memset (struct grub_dirhook_info*,int ,int) ;
 scalar_t__ grub_strcasecmp (char*,char const*) ;
 int stub1 (char const*,struct grub_dirhook_info*,int ) ;
 int stub2 (char const*,struct grub_dirhook_info*,int ) ;

__attribute__((used)) static int
grub_fat_find_dir_hook (const char *filename, struct grub_fat_dir_entry *dir,
   void *closure)
{
  struct grub_fat_find_dir_closure *c = closure;
  struct grub_dirhook_info info;
  grub_memset (&info, 0, sizeof (info));

  info.dir = !! (dir->attr & GRUB_FAT_ATTR_DIRECTORY);
  info.case_insensitive = 1;

  if (dir->attr & GRUB_FAT_ATTR_VOLUME_ID)
    return 0;
  if (*(c->dirname) == '\0' && (c->call_hook))
    return c->hook (filename, &info, c->closure);

  if (grub_strcasecmp (c->dirname, filename) == 0)
    {
      struct grub_fat_data *data = c->data;

      c->found = 1;
      data->attr = dir->attr;
      data->file_size = grub_le_to_cpu32 (dir->file_size);
      data->file_cluster = ((grub_le_to_cpu16 (dir->first_cluster_high) << 16)
          | grub_le_to_cpu16 (dir->first_cluster_low));
      data->cur_cluster_num = ~0U;

      if (c->call_hook)
 c->hook (filename, &info, c->closure);

      return 1;
    }
  return 0;
}
