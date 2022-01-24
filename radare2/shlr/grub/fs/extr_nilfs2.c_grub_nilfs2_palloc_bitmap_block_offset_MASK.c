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
struct grub_nilfs2_data {int dummy; } ;
typedef  scalar_t__ grub_uint32_t ;

/* Variables and functions */
 unsigned long FUNC0 (struct grub_nilfs2_data*,unsigned long) ; 
 scalar_t__ FUNC1 (struct grub_nilfs2_data*,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (struct grub_nilfs2_data*) ; 

__attribute__((used)) static inline grub_uint32_t
FUNC3 (struct grub_nilfs2_data *data,
					unsigned long group,
					unsigned long entry_size)
{
  unsigned long desc_offset = group %
    FUNC2 (data);

  return FUNC1 (data, group, entry_size) + 1 +
    desc_offset * FUNC0 (data, entry_size);
}