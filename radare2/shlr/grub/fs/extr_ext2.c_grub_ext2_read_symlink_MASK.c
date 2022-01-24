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
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  symlink; } ;
struct grub_fshelp_node {TYPE_1__ inode; int /*<<< orphan*/  ino; int /*<<< orphan*/  data; int /*<<< orphan*/  inode_read; } ;
typedef  struct grub_fshelp_node* grub_fshelp_node_t ;

/* Variables and functions */
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC0 (struct grub_fshelp_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static char *
FUNC6 (grub_fshelp_node_t node)
{
  char *symlink;
  struct grub_fshelp_node *diro = node;

  if (! diro->inode_read)
    {
      FUNC1 (diro->data, diro->ino, &diro->inode);
      if (grub_errno)
	return 0;
    }

  symlink = FUNC4 (FUNC3 (diro->inode.size) + 1);
  if (! symlink)
    return 0;

  /* If the filesize of the symlink is bigger than
     60 the symlink is stored in a separate block,
     otherwise it is stored in the inode.  */
  if (FUNC3 (diro->inode.size) <= 60)
    FUNC5 (symlink,
		  diro->inode.symlink,
		  FUNC3 (diro->inode.size));
  else
    {
      FUNC0 (diro, 0, 0, 0, 0,
			   FUNC3 (diro->inode.size),
			   symlink);
      if (grub_errno)
	{
	  FUNC2 (symlink);
	  return 0;
	}
    }

  symlink[FUNC3 (diro->inode.size)] = '\0';
  return symlink;
}