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
struct grub_fat_find_dir_closure {char* dirname; int (* hook ) (char const*,struct grub_dirhook_info*,int /*<<< orphan*/ ) ;int found; int /*<<< orphan*/  closure; scalar_t__ call_hook; struct grub_fat_data* data; } ;
struct grub_fat_dir_entry {int attr; int /*<<< orphan*/  first_cluster_low; int /*<<< orphan*/  first_cluster_high; int /*<<< orphan*/  file_size; } ;
struct grub_fat_data {int attr; int file_cluster; unsigned int cur_cluster_num; int /*<<< orphan*/  file_size; } ;
struct grub_dirhook_info {int dir; int case_insensitive; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int GRUB_FAT_ATTR_DIRECTORY ; 
 int GRUB_FAT_ATTR_VOLUME_ID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct grub_dirhook_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*,struct grub_dirhook_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,struct grub_dirhook_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (const char *filename, struct grub_fat_dir_entry *dir,
			void *closure)
{
  struct grub_fat_find_dir_closure *c = closure;
  struct grub_dirhook_info info;
  FUNC2 (&info, 0, sizeof (info));

  info.dir = !! (dir->attr & GRUB_FAT_ATTR_DIRECTORY);
  info.case_insensitive = 1;

  if (dir->attr & GRUB_FAT_ATTR_VOLUME_ID)
    return 0;
  if (*(c->dirname) == '\0' && (c->call_hook))
    return c->hook (filename, &info, c->closure);

  if (FUNC3 (c->dirname, filename) == 0)
    {
      struct grub_fat_data *data = c->data;

      c->found = 1;
      data->attr = dir->attr;
      data->file_size = FUNC1 (dir->file_size);
      data->file_cluster = ((FUNC0 (dir->first_cluster_high) << 16)
			       | FUNC0 (dir->first_cluster_low));
      data->cur_cluster_num = ~0U;

      if (c->call_hook)
	c->hook (filename, &info, c->closure);

      return 1;
    }
  return 0;
}