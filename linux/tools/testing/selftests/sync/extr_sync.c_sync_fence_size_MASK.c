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
struct sync_file_info {int num_fences; } ;

/* Variables and functions */
 struct sync_file_info* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sync_file_info*) ; 

int FUNC2(int fd)
{
	int count;
	struct sync_file_info *info = FUNC0(fd);

	if (!info)
		return 0;

	count = info->num_fences;

	FUNC1(info);

	return count;
}