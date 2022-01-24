#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct find_file_closure {int* type; int /*<<< orphan*/ * currnode; int /*<<< orphan*/ * oldnode; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  grub_fshelp_node_t ;
typedef  enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;

/* Variables and functions */
 int GRUB_FSHELP_CASE_INSENSITIVE ; 
 int GRUB_FSHELP_UNKNOWN ; 
 int /*<<< orphan*/  GRUB_LONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (const char *filename,
	 enum grub_fshelp_filetype filetype,
	 grub_fshelp_node_t node,
	 void *closure)
{
  struct find_file_closure *c = closure;

  if (filetype == GRUB_FSHELP_UNKNOWN ||
      (FUNC1 (c->name, filename) &&
       (! (filetype & GRUB_FSHELP_CASE_INSENSITIVE) ||
	FUNC2 (c->name, filename, GRUB_LONG_MAX))))
    {
      FUNC0 (node);
      return 0;
    }

  /* The node is found, stop iterating over the nodes.  */
  *(c->type) = filetype & ~GRUB_FSHELP_CASE_INSENSITIVE;
  *(c->oldnode) = *(c->currnode);
  *(c->currnode) = node;

  return 1;
}