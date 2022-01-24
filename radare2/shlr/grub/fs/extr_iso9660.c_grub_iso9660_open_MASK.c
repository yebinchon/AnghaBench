#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  first_sector; } ;
struct TYPE_6__ {TYPE_2__ rootdir; } ;
struct grub_iso9660_data {void* first_sector; TYPE_3__ voldesc; } ;
struct grub_fshelp_node {void* size; void* blk; struct grub_iso9660_data* data; } ;
struct grub_file {scalar_t__ offset; void* size; struct grub_iso9660_data* data; TYPE_1__* device; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
struct TYPE_4__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_FSHELP_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC2 (struct grub_iso9660_data*) ; 
 scalar_t__ FUNC3 (char const*,struct grub_fshelp_node*,struct grub_fshelp_node**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_iso9660_iterate_dir ; 
 struct grub_iso9660_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_iso9660_read_symlink ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC6 (struct grub_file *file, const char *name)
{
  struct grub_iso9660_data *data;
  struct grub_fshelp_node rootnode;
  struct grub_fshelp_node *foundnode;

  FUNC0 (my_mod);

  data = FUNC4 (file->device->disk);
  if (!data)
    goto fail;

  rootnode.data = data;
  rootnode.blk = FUNC5 (data->voldesc.rootdir.first_sector);
  rootnode.size = FUNC5 (data->voldesc.rootdir.size);

  /* Use the fshelp function to traverse the path.  */
  if (FUNC3 (name, &rootnode,
			     &foundnode,
			     grub_iso9660_iterate_dir, 0,
			     grub_iso9660_read_symlink,
			     GRUB_FSHELP_REG))
    goto fail;

  data->first_sector = foundnode->blk;

  file->data = data;
  file->size = foundnode->size;
  file->offset = 0;

  return 0;

 fail:
  FUNC1 (my_mod);

  FUNC2 (data);

  return grub_errno;
}