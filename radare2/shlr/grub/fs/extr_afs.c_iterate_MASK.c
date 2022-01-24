#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct grub_dirhook_info {int dir; int mtimeset; int mtime; } ;
struct grub_afs_dir_closure {int (* hook ) (char const*,struct grub_dirhook_info*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  closure; } ;
typedef  int /*<<< orphan*/  info ;
typedef  TYPE_2__* grub_fshelp_node_t ;
typedef  enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;
struct TYPE_5__ {int /*<<< orphan*/  modified_time; } ;
struct TYPE_6__ {TYPE_1__ inode; } ;

/* Variables and functions */
 int GRUB_FSHELP_DIR ; 
 int GRUB_FSHELP_TYPE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct grub_dirhook_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char const*,struct grub_dirhook_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (const char *filename,
	 enum grub_fshelp_filetype filetype,
	 grub_fshelp_node_t node, void *closure)
{
  struct grub_afs_dir_closure *c = closure;
  struct grub_dirhook_info info;
  FUNC3 (&info, 0, sizeof (info));
  info.dir = ((filetype & GRUB_FSHELP_TYPE_MASK) == GRUB_FSHELP_DIR);
  info.mtimeset = 1;
#ifdef MODE_BFS
  info.mtime = grub_afs_to_cpu64 (node->inode.modified_time) >> 16;
#else
  info.mtime = FUNC1 (FUNC0 (node->inode.modified_time),
			      1000000, 0);
#endif
  FUNC2 (node);
  return c->hook (filename, &info, c->closure);
}