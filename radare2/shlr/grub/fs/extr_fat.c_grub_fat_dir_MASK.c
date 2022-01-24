#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char grub_fat_data ;
typedef  int grub_size_t ;
typedef  scalar_t__ grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;
typedef  TYPE_1__* grub_device_t ;
struct TYPE_3__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 scalar_t__ GRUB_ERR_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ grub_errno ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,char*,int (*) (char const*,struct grub_dirhook_info const*,void*),void*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC8 (grub_device_t device, const char *path,
	      int (*hook) (const char *filename,
			   const struct grub_dirhook_info *info, void *closure),
	      void *closure)
{
  struct grub_fat_data *data = 0;
  grub_disk_t disk = device->disk;
  grub_size_t len;
  char *dirname = 0;
  char *p;

  FUNC0 (my_mod);

  data = FUNC3 (disk);
  if (! data)
    goto fail;

  /* Make sure that DIRNAME terminates with '/'.  */
  len = FUNC7 (path);
  dirname = FUNC5 (len + 1 + 1);
  if (! dirname)
    goto fail;
  FUNC6 (dirname, path, len);
  p = dirname + len;
  if (len>0 && path[len - 1] != '/')
    *p++ = '/';
  *p = '\0';
  p = dirname;

  do
    {
      p = FUNC2 (disk, data, p, hook, closure);
    }
  while (p && grub_errno == GRUB_ERR_NONE);

 fail:

  FUNC4 (dirname);
  FUNC4 (data);

  FUNC1 (my_mod);

  return grub_errno;
}