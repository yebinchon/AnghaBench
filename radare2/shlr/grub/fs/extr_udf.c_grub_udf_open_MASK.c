#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct grub_udf_data {int /*<<< orphan*/  root_icb; } ;
struct TYPE_3__ {int /*<<< orphan*/  file_size; } ;
struct grub_fshelp_node {TYPE_1__ fe; } ;
struct grub_file {int /*<<< orphan*/  size; scalar_t__ offset; struct grub_fshelp_node* data; TYPE_2__* device; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
struct TYPE_4__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_FSHELP_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC3 (struct grub_udf_data*) ; 
 scalar_t__ FUNC4 (char const*,struct grub_fshelp_node*,struct grub_fshelp_node**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_udf_iterate_dir ; 
 struct grub_udf_data* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct grub_udf_data*,int /*<<< orphan*/ *,struct grub_fshelp_node*) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC7 (struct grub_file *file, const char *name)
{
  struct grub_udf_data *data;
  struct grub_fshelp_node rootnode;
  struct grub_fshelp_node *foundnode;

  FUNC1 (my_mod);

  data = FUNC5 (file->device->disk);
  if (!data)
    goto fail;

  if (FUNC6 (data, &data->root_icb, &rootnode))
    goto fail;

  if (FUNC4 (name, &rootnode,
			     &foundnode,
			     grub_udf_iterate_dir, 0, 0, GRUB_FSHELP_REG))
    goto fail;

  file->data = foundnode;
  file->offset = 0;
  file->size = FUNC0 (foundnode->fe.file_size);

  return 0;

fail:
  FUNC2 (my_mod);

  FUNC3 (data);

  return grub_errno;
}