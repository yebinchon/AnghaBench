
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char grub_fat_data ;
typedef int grub_size_t ;
typedef scalar_t__ grub_err_t ;
typedef int grub_disk_t ;
typedef TYPE_1__* grub_device_t ;
struct TYPE_3__ {int disk; } ;


 scalar_t__ GRUB_ERR_NONE ;
 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 scalar_t__ grub_errno ;
 char* grub_fat_find_dir (int ,char*,char*,int (*) (char const*,struct grub_dirhook_info const*,void*),void*) ;
 char* grub_fat_mount (int ) ;
 int grub_free (char*) ;
 char* grub_malloc (int) ;
 int grub_memcpy (char*,char const*,int) ;
 int grub_strlen (char const*) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_fat_dir (grub_device_t device, const char *path,
       int (*hook) (const char *filename,
      const struct grub_dirhook_info *info, void *closure),
       void *closure)
{
  struct grub_fat_data *data = 0;
  grub_disk_t disk = device->disk;
  grub_size_t len;
  char *dirname = 0;
  char *p;

  grub_dl_ref (my_mod);

  data = grub_fat_mount (disk);
  if (! data)
    goto fail;


  len = grub_strlen (path);
  dirname = grub_malloc (len + 1 + 1);
  if (! dirname)
    goto fail;
  grub_memcpy (dirname, path, len);
  p = dirname + len;
  if (len>0 && path[len - 1] != '/')
    *p++ = '/';
  *p = '\0';
  p = dirname;

  do
    {
      p = grub_fat_find_dir (disk, data, p, hook, closure);
    }
  while (p && grub_errno == GRUB_ERR_NONE);

 fail:

  grub_free (dirname);
  grub_free (data);

  grub_dl_unref (my_mod);

  return grub_errno;
}
