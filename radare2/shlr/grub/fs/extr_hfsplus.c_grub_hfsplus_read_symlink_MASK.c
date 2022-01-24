#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ grub_ssize_t ;
typedef  TYPE_1__* grub_fshelp_node_t ;
struct TYPE_4__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static char *
FUNC3 (grub_fshelp_node_t node)
{
  char *symlink;
  grub_ssize_t numread;

  symlink = FUNC2 (node->size + 1);
  if (!symlink)
    return 0;

  numread = FUNC1 (node, 0, 0, 0, 0, node->size, symlink);
  if (numread != (grub_ssize_t) node->size)
    {
      FUNC0 (symlink);
      return 0;
    }
  symlink[node->size] = '\0';

  return symlink;
}