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
struct grub_sfs_data {int /*<<< orphan*/  blocksize; int /*<<< orphan*/  disk; } ;
typedef  TYPE_1__* grub_fshelp_node_t ;
struct TYPE_3__ {int /*<<< orphan*/  block; struct grub_sfs_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4 (grub_fshelp_node_t node)
{
  struct grub_sfs_data *data = node->data;
  char *symlink;
  char *block;

  block = FUNC2 (data->blocksize);
  if (!block)
    return 0;

  FUNC0 (data->disk, node->block, 0, data->blocksize, block);
  if (grub_errno)
    {
      FUNC1 (block);
      return 0;
    }

  /* This is just a wild guess, but it always worked for me.  How the
     SLNK block looks like is not documented in the SFS docs.  */
  symlink = FUNC3 (&block[24]);
  FUNC1 (block);
  if (!symlink)
    return 0;

  return symlink;
}