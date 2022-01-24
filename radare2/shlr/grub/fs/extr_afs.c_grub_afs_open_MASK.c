#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct grub_fshelp_node {TYPE_3__* inode; int /*<<< orphan*/  diropen; } ;
struct grub_file {scalar_t__ offset; struct grub_fshelp_node* data; int /*<<< orphan*/  size; TYPE_1__* device; } ;
struct grub_afs_inode {int dummy; } ;
struct grub_afs_data {TYPE_3__* inode; int /*<<< orphan*/  diropen; } ;
typedef  scalar_t__ grub_err_t ;
struct TYPE_6__ {int /*<<< orphan*/  size; } ;
struct TYPE_7__ {TYPE_2__ stream; } ;
struct TYPE_5__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_FSHELP_REG ; 
 int /*<<< orphan*/  grub_afs_iterate_dir ; 
 struct grub_fshelp_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_afs_read_symlink ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC4 (struct grub_fshelp_node*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *,struct grub_fshelp_node**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_3__**,int) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC7 (struct grub_file *file, const char *name)
{
  struct grub_afs_data *data;
  struct grub_fshelp_node *fdiro = 0;

  FUNC2 (my_mod);

  data = FUNC0 (file->device->disk);
  if (! data)
    goto fail;

  FUNC5 (name, &data->diropen, &fdiro, grub_afs_iterate_dir, 0,
			 grub_afs_read_symlink, GRUB_FSHELP_REG);
  if (grub_errno)
    goto fail;

  FUNC6 (data->inode, &fdiro->inode, sizeof (struct grub_afs_inode));
  FUNC4 (fdiro);

  file->size = FUNC1 (data->inode->stream.size);
  file->data = data;
  file->offset = 0;

  return 0;

fail:
  FUNC4 (data);

  FUNC3 (my_mod);

  return grub_errno;
}