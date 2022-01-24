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
struct grub_udf_dir_closure {int (* hook ) (char const*,struct grub_dirhook_info const*,void*) ;void* closure; } ;
struct grub_udf_data {int /*<<< orphan*/  root_icb; } ;
struct grub_fshelp_node {int /*<<< orphan*/  root_icb; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  TYPE_1__* grub_device_t ;
struct TYPE_3__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_FSHELP_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC2 (struct grub_udf_data*) ; 
 scalar_t__ FUNC3 (char const*,struct grub_udf_data*,struct grub_udf_data**,int /*<<< orphan*/  (*) (struct grub_udf_data*,int /*<<< orphan*/ ,struct grub_udf_dir_closure*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct grub_udf_data*,int /*<<< orphan*/ ,struct grub_udf_dir_closure*) ; 
 struct grub_udf_data* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct grub_udf_data*,int /*<<< orphan*/ *,struct grub_udf_data*) ; 
 int /*<<< orphan*/  iterate ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC7 (grub_device_t device, const char *path,
	      int (*hook) (const char *filename,
			   const struct grub_dirhook_info *info,
			   void *closure),
	      void *closure)
{
  struct grub_udf_data *data = 0;
  struct grub_fshelp_node rootnode;
  struct grub_fshelp_node *foundnode;
  struct grub_udf_dir_closure c;

  FUNC0 (my_mod);

  data = FUNC5 (device->disk);
  if (!data)
    goto fail;

  if (FUNC6 (data, &data->root_icb, &rootnode))
    goto fail;

  if (FUNC3 (path, &rootnode,
			     &foundnode,
			     grub_udf_iterate_dir, 0, 0, GRUB_FSHELP_DIR))
    goto fail;

  if (hook) {
    c.hook = hook;
    c.closure = closure;
    FUNC4 (foundnode, iterate, &c);
  }

  if (foundnode != &rootnode)
    FUNC2 (foundnode);

fail:
  FUNC2 (data);

  FUNC1 (my_mod);

  return grub_errno;
}