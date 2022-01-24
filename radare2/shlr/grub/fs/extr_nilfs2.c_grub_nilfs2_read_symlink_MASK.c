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
struct TYPE_2__ {int /*<<< orphan*/  i_size; } ;
struct grub_fshelp_node {TYPE_1__ inode; int /*<<< orphan*/  ino; int /*<<< orphan*/  data; int /*<<< orphan*/  inode_read; } ;
typedef  struct grub_fshelp_node* grub_fshelp_node_t ;

/* Variables and functions */
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct grub_fshelp_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static char *
FUNC5 (grub_fshelp_node_t node)
{
  char *symlink;
  struct grub_fshelp_node *diro = node;

  if (!diro->inode_read)
    {
      FUNC4 (diro->data, diro->ino, &diro->inode);
      if (grub_errno)
	return 0;
    }

  symlink = FUNC2 (FUNC1 (diro->inode.i_size) + 1);
  if (!symlink)
    return 0;

  FUNC3 (diro, 0, 0, 0, 0,
			 FUNC1 (diro->inode.i_size), symlink);
  if (grub_errno)
    {
      FUNC0 (symlink);
      return 0;
    }

  symlink[FUNC1 (diro->inode.i_size)] = '\0';
  return symlink;
}