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
struct grub_reiserfs_key {int dummy; } ;

/* Variables and functions */
 scalar_t__ GRUB_REISERFS_UNKNOWN ; 
 scalar_t__ FUNC0 (struct grub_reiserfs_key const*) ; 

__attribute__((used)) static int
FUNC1 (const struct grub_reiserfs_key *key)
{
  return FUNC0 (key) == GRUB_REISERFS_UNKNOWN ? 2 : 1;
}