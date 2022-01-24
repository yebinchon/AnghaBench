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
struct grub_hfs_filerec {scalar_t__ type; int /*<<< orphan*/  fileid; int /*<<< orphan*/  size; int /*<<< orphan*/  extents; int /*<<< orphan*/  member_0; } ;
struct grub_hfs_data {void* fileid; void* size; int /*<<< orphan*/  extents; } ;
struct grub_file {struct grub_hfs_data* data; scalar_t__ offset; void* size; TYPE_1__* device; } ;
typedef  int /*<<< orphan*/  grub_hfs_datarecord_t ;
typedef  int /*<<< orphan*/  grub_err_t ;
struct TYPE_2__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FILE_TYPE ; 
 scalar_t__ GRUB_HFS_FILETYPE_FILE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct grub_hfs_data*) ; 
 scalar_t__ FUNC5 (struct grub_hfs_data*,char const*,struct grub_hfs_filerec*,int /*<<< orphan*/ ) ; 
 struct grub_hfs_data* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC8 (struct grub_file *file, const char *name)
{
  struct grub_hfs_data *data;
  struct grub_hfs_filerec frec = {0};

  FUNC1 (my_mod);

  data = FUNC6 (file->device->disk);

  if (FUNC5 (data, name, &frec, 0))
    {
      FUNC4 (data);
      FUNC2 (my_mod);
      return grub_errno;
    }

  if (frec.type != GRUB_HFS_FILETYPE_FILE)
    {
      FUNC4 (data);
      FUNC3 (GRUB_ERR_BAD_FILE_TYPE, "not a file");
      FUNC2 (my_mod);
      return grub_errno;
    }

  FUNC7 (data->extents, frec.extents, sizeof (grub_hfs_datarecord_t));
  file->size = FUNC0 (frec.size);
  data->size = FUNC0 (frec.size);
  data->fileid = FUNC0 (frec.fileid);
  file->offset = 0;

  file->data = data;

  return 0;
}