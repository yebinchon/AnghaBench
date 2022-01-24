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
struct TYPE_5__ {scalar_t__ offset_type; } ;
struct TYPE_6__ {TYPE_1__ v2; } ;
struct grub_reiserfs_key {TYPE_2__ u; void* object_id; void* directory_id; } ;
struct grub_reiserfs_dir_closure {int (* hook ) (char const*,struct grub_dirhook_info const*,void*) ;void* closure; } ;
struct grub_reiserfs_data {int dummy; } ;
struct grub_fshelp_node {scalar_t__ block_number; } ;
typedef  scalar_t__ grub_err_t ;
typedef  TYPE_3__* grub_device_t ;
struct TYPE_7__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 scalar_t__ GRUB_ERR_NONE ; 
 int /*<<< orphan*/  GRUB_FSHELP_DIR ; 
 int /*<<< orphan*/  GRUB_REISERFS_DIRECTORY ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct grub_reiserfs_data*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,struct grub_fshelp_node*,struct grub_fshelp_node**,int /*<<< orphan*/  (*) (struct grub_fshelp_node*,int /*<<< orphan*/ ,struct grub_reiserfs_dir_closure*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct grub_reiserfs_data*,struct grub_reiserfs_key*,struct grub_fshelp_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct grub_fshelp_node*,int /*<<< orphan*/ ,struct grub_reiserfs_dir_closure*) ; 
 struct grub_reiserfs_data* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_reiserfs_read_symlink ; 
 int /*<<< orphan*/  FUNC9 (struct grub_reiserfs_key*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct grub_reiserfs_key*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  iterate ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC11 (grub_device_t device, const char *path,
                   int (*hook) (const char *filename,
				const struct grub_dirhook_info *info,
				void *closure),
		   void *closure)
{
  struct grub_reiserfs_data *data = 0;
  struct grub_fshelp_node root, *found;
  struct grub_reiserfs_key root_key;
  struct grub_reiserfs_dir_closure c;

  FUNC1 (my_mod);
  data = FUNC8 (device->disk);
  if (! data)
    goto fail;
  root_key.directory_id = FUNC0 (1);
  root_key.object_id = FUNC0 (2);
  root_key.u.v2.offset_type = 0;
  FUNC10 (&root_key, GRUB_REISERFS_DIRECTORY, 2);
  FUNC9 (&root_key, 1);
  if (FUNC6 (data, &root_key, &root) != GRUB_ERR_NONE)
    goto fail;
  if (root.block_number == 0)
    {
      FUNC3(GRUB_ERR_BAD_FS, "root not found");
      goto fail;
    }
  FUNC5 (path, &root, &found, grub_reiserfs_iterate_dir, 0,
                         grub_reiserfs_read_symlink, GRUB_FSHELP_DIR);
  if (grub_errno)
    goto fail;
  c.hook = hook;
  c.closure = closure;
  FUNC7 (found, iterate, &c);
  FUNC4 (data);
  FUNC2 (my_mod);
  return GRUB_ERR_NONE;

 fail:
  FUNC4 (data);
  FUNC2 (my_mod);
  return grub_errno;
}