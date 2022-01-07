
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_fat_find_dir_closure {int (* hook ) (char const*,struct grub_dirhook_info const*,void*) ;char* dirname; scalar_t__ found; int call_hook; void* closure; struct grub_fat_data* data; } ;
struct grub_fat_data {int attr; } ;
typedef int grub_disk_t ;


 int GRUB_ERR_BAD_FILE_TYPE ;
 int GRUB_ERR_FILE_NOT_FOUND ;
 scalar_t__ GRUB_ERR_NONE ;
 int GRUB_FAT_ATTR_DIRECTORY ;
 scalar_t__ grub_errno ;
 int grub_error (int ,char*) ;
 int grub_fat_find_dir_hook ;
 int grub_fat_iterate_dir (int ,struct grub_fat_data*,int ,struct grub_fat_find_dir_closure*) ;
 int grub_free (char*) ;
 char* grub_malloc (unsigned int) ;
 int grub_memcpy (char*,char const*,unsigned int) ;
 char* grub_strchr (char const*,char) ;
 char* grub_strdup (char const*) ;

__attribute__((used)) static char *
grub_fat_find_dir (grub_disk_t disk, struct grub_fat_data *data,
     const char *path,
     int (*hook) (const char *filename,
    const struct grub_dirhook_info *info,
    void *closure),
     void *closure)
{
  char *dirname, *dirp;
  struct grub_fat_find_dir_closure c;

  if (! (data->attr & GRUB_FAT_ATTR_DIRECTORY))
    {
      grub_error (GRUB_ERR_BAD_FILE_TYPE, "not a directory");
      return 0;
    }


  while (*path == '/')
    path++;

  dirp = grub_strchr (path, '/');
  if (dirp)
    {
      unsigned len = dirp - path;

      dirname = grub_malloc (len + 1);
      if (! dirname)
 return 0;

      grub_memcpy (dirname, path, len);
      dirname[len] = '\0';
    }
  else

    dirname = grub_strdup (path);

  c.data = data;
  c.hook = hook;
  c.closure = closure;
  c.dirname =dirname;
  c.found = 0;
  c.call_hook = (! dirp && hook);
  grub_fat_iterate_dir (disk, data, grub_fat_find_dir_hook, &c);
  if (grub_errno == GRUB_ERR_NONE && ! c.found && !c.call_hook)
    grub_error (GRUB_ERR_FILE_NOT_FOUND, "file not found");

  grub_free (dirname);

  return c.found ? dirp : 0;
}
