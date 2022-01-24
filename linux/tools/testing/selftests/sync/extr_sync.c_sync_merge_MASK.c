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
struct sync_merge_data {int fd2; char* name; int fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYNC_IOC_MERGE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct sync_merge_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 

int FUNC2(const char *name, int fd1, int fd2)
{
	struct sync_merge_data data = {};
	int err;

	data.fd2 = fd2;
	FUNC1(data.name, name, sizeof(data.name) - 1);
	data.name[sizeof(data.name) - 1] = '\0';

	err = FUNC0(fd1, SYNC_IOC_MERGE, &data);
	if (err < 0)
		return err;

	return data.fence;
}