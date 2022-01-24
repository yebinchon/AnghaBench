#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct grub_fat_find_dir_closure {int (* hook ) (char const*,struct grub_dirhook_info const*,void*) ;char* dirname; scalar_t__ found; int /*<<< orphan*/  call_hook; void* closure; struct grub_fat_data* data; } ;
struct grub_fat_data {int attr; } ;
typedef  int /*<<< orphan*/  grub_disk_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FILE_TYPE ; 
 int /*<<< orphan*/  GRUB_ERR_FILE_NOT_FOUND ; 
 scalar_t__ GRUB_ERR_NONE ; 
 int GRUB_FAT_ATTR_DIRECTORY ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  grub_fat_find_dir_hook ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct grub_fat_data*,int /*<<< orphan*/ ,struct grub_fat_find_dir_closure*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,unsigned int) ; 
 char* FUNC5 (char const*,char) ; 
 char* FUNC6 (char const*) ; 

__attribute__((used)) static char *
FUNC7 (grub_disk_t disk, struct grub_fat_data *data,
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
      FUNC0 (GRUB_ERR_BAD_FILE_TYPE, "not a directory");
      return 0;
    }

  /* Extract a directory name.  */
  while (*path == '/')
    path++;

  dirp = FUNC5 (path, '/');
  if (dirp)
    {
      unsigned len = dirp - path;

      dirname = FUNC3 (len + 1);
      if (! dirname)
	return 0;

      FUNC4 (dirname, path, len);
      dirname[len] = '\0';
    }
  else
    /* This is actually a file.  */
    dirname = FUNC6 (path);

  c.data = data;
  c.hook = hook;
  c.closure = closure;
  c.dirname =dirname;
  c.found = 0;
  c.call_hook = (! dirp && hook);
  FUNC1 (disk, data, grub_fat_find_dir_hook, &c);
  if (grub_errno == GRUB_ERR_NONE && ! c.found && !c.call_hook)
    FUNC0 (GRUB_ERR_FILE_NOT_FOUND, "file not found");

  FUNC2 (dirname);

  return c.found ? dirp : 0;
}