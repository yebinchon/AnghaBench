#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct grub_file {int /*<<< orphan*/  size; struct grub_fb_data* data; TYPE_1__* device; } ;
struct grub_fb_data {struct fbm_file* ptr; scalar_t__ fb_list; } ;
struct fbm_file {int size; int /*<<< orphan*/  data_size; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
struct TYPE_2__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  GRUB_ERR_NONE ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct grub_fb_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static grub_err_t
FUNC3 (struct grub_file *file, const char *name)
{
  struct fbm_file *p;
  struct grub_fb_data *data;

  data = FUNC1 (file->device->disk);
  if (! data)
    return grub_errno;

  while (*name == '/')
    name++;

  p = (struct fbm_file *) data->fb_list;
  while (p->size)
    {
      if (! FUNC2 (name, p->name))
	{
	  file->data = data;
	  data->ptr = p;
	  file->size = p->data_size;
	  return GRUB_ERR_NONE;
	}

      p = (struct fbm_file *) ((char *) p + p->size + 2);
    }

  return FUNC0 (GRUB_ERR_FILE_NOT_FOUND, "file not found");
}