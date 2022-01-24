#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* grub_fshelp_node_t ;
typedef  int grub_afs_off_t ;
struct TYPE_7__ {int /*<<< orphan*/  size; } ;
struct TYPE_6__ {TYPE_2__ stream; } ;
struct TYPE_8__ {TYPE_1__ inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static char *
FUNC4 (grub_fshelp_node_t node)
{
  char *ret;
  grub_afs_off_t size = FUNC1 (node->inode.stream.size);

  if (size == 0)
    {
      size = sizeof (node->inode.stream);
      ret = FUNC3 (size + 1);
      if (! ret)
	return 0;
      FUNC2 (ret, (char *) &(node->inode.stream),
		   sizeof (node->inode.stream));
      return ret;
    }
  ret = FUNC3 (size + 1);
  if (! ret)
    return 0;
  FUNC0 (node, 0, 0, 0, 0, size, ret);
  return ret;
}