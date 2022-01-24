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
struct grub_affs_data {int /*<<< orphan*/  blocksize; int /*<<< orphan*/  disk; } ;
typedef  TYPE_1__* grub_fshelp_node_t ;
struct TYPE_3__ {int /*<<< orphan*/  block; struct grub_affs_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_AFFS_SYMLINK_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC5 (grub_fshelp_node_t node)
{
  struct grub_affs_data *data = node->data;
  char *symlink;

  symlink = FUNC4 (FUNC0 (data->blocksize));
  if (!symlink)
    return 0;

  FUNC1 (data->disk, node->block, GRUB_AFFS_SYMLINK_OFFSET,
		  FUNC0 (data->blocksize), symlink);
  if (grub_errno)
    {
      FUNC3 (symlink);
      return 0;
    }
  FUNC2 ("affs", "Symlink: `%s'\n", symlink);
  return symlink;
}