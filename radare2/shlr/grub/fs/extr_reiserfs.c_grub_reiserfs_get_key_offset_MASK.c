#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  offset_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  offset; } ;
struct TYPE_6__ {TYPE_2__ v2; TYPE_1__ v1; } ;
struct grub_reiserfs_key {TYPE_3__ u; } ;
typedef  unsigned long long grub_uint64_t ;

/* Variables and functions */
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct grub_reiserfs_key const*) ; 

__attribute__((used)) static grub_uint64_t
FUNC3 (const struct grub_reiserfs_key *key)
{
  if (FUNC2 (key) == 1)
    return FUNC0 (key->u.v1.offset);
  else
    return FUNC1 (key->u.v2.offset_type) & (~0ULL >> 4);
}