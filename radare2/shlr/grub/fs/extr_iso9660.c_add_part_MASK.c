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
struct grub_iso9660_read_symlink_closure {int /*<<< orphan*/  symlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC3 (const char *part, int len,
	  struct grub_iso9660_read_symlink_closure *c)
{
  int size = FUNC1 (c->symlink);

  c->symlink = FUNC0 (c->symlink, size + len + 1);
  if (! c->symlink)
    return;

  FUNC2 (c->symlink, part, len);
}