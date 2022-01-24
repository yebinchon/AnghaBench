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
struct grub_iso9660_dir_closure {int (* hook ) (char const*,struct grub_dirhook_info*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  closure; } ;
struct grub_dirhook_info {int dir; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  grub_fshelp_node_t ;
typedef  enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;

/* Variables and functions */
 int GRUB_FSHELP_DIR ; 
 int GRUB_FSHELP_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct grub_dirhook_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char const*,struct grub_dirhook_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (const char *filename,
	 enum grub_fshelp_filetype filetype,
	 grub_fshelp_node_t node, void *closure)
{
  struct grub_iso9660_dir_closure *c = closure;
  struct grub_dirhook_info info;
  FUNC1 (&info, 0, sizeof (info));
  info.dir = ((filetype & GRUB_FSHELP_TYPE_MASK) == GRUB_FSHELP_DIR);
  FUNC0 (node);
  return c->hook (filename, &info, c->closure);
}