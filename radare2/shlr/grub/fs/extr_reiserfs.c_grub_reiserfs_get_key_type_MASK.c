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
typedef  enum grub_reiserfs_item_type { ____Placeholder_grub_reiserfs_item_type } grub_reiserfs_item_type ;

/* Variables and functions */
 int FUNC0 (struct grub_reiserfs_key const*) ; 
 int FUNC1 (struct grub_reiserfs_key const*) ; 
 int FUNC2 (struct grub_reiserfs_key const*) ; 

__attribute__((used)) static enum grub_reiserfs_item_type
FUNC3 (const struct grub_reiserfs_key *key)
{
  if (FUNC2 (key) == 1)
    return FUNC0 (key);
  else
    return FUNC1 (key);
}