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
struct disassemble_info {int /*<<< orphan*/ * private_data; } ;
typedef  int /*<<< orphan*/  bfd_vma ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct disassemble_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct disassemble_info*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct disassemble_info*,int,int /*<<< orphan*/ ) ; 

int
FUNC3 (bfd_vma memaddr, struct disassemble_info *info)
{
	if (info->private_data == NULL && !FUNC1 (info)) {
		return -1;
	}
	return FUNC2 (memaddr, info, 1, FUNC0 (info));
}