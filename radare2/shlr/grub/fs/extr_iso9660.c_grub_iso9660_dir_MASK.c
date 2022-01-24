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
struct grub_iso9660_dir_closure {int (* hook ) (char const*,struct grub_dirhook_info const*,void*) ;void* closure; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  first_sector; } ;
struct TYPE_6__ {TYPE_1__ rootdir; } ;
struct grub_iso9660_data {TYPE_2__ voldesc; void* size; void* blk; struct grub_iso9660_data* data; } ;
struct grub_fshelp_node {TYPE_2__ voldesc; void* size; void* blk; struct grub_fshelp_node* data; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  TYPE_3__* grub_device_t ;
struct TYPE_7__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_FSHELP_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC2 (struct grub_iso9660_data*) ; 
 scalar_t__ FUNC3 (char const*,struct grub_iso9660_data*,struct grub_iso9660_data**,int /*<<< orphan*/  (*) (struct grub_iso9660_data*,int /*<<< orphan*/ ,struct grub_iso9660_dir_closure*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct grub_iso9660_data*,int /*<<< orphan*/ ,struct grub_iso9660_dir_closure*) ; 
 struct grub_iso9660_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_iso9660_read_symlink ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iterate ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC7 (grub_device_t device, const char *path,
		  int (*hook) (const char *filename,
			       const struct grub_dirhook_info *info,
			       void *closure),
		  void *closure)
{
  struct grub_iso9660_data *data = 0;
  struct grub_fshelp_node rootnode;
  struct grub_fshelp_node *foundnode;
  struct grub_iso9660_dir_closure c;

  FUNC0 (my_mod);

  data = FUNC5 (device->disk);
  if (! data)
    goto fail;

  rootnode.data = data;
  rootnode.blk = FUNC6 (data->voldesc.rootdir.first_sector);
  rootnode.size = FUNC6 (data->voldesc.rootdir.size);

  /* Use the fshelp function to traverse the path.  */
  if (FUNC3 (path, &rootnode,
			     &foundnode,
			     grub_iso9660_iterate_dir, 0,
			     grub_iso9660_read_symlink,
			     GRUB_FSHELP_DIR))
    goto fail;

  c.hook = hook;
  c.closure = closure;
  /* List the files in the directory.  */
  FUNC4 (foundnode, iterate, &c);

  if (foundnode != &rootnode)
    FUNC2 (foundnode);

 fail:
  FUNC2 (data);

  FUNC1 (my_mod);

  return grub_errno;
}