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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FONFXC_PAD_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t,int*) ; 

__attribute__((used)) static ssize_t FUNC1(u_char *buf, size_t len, int *extralen)
{
	if (FUNC0(buf, len, extralen) < 0)
		return -EINVAL;

	*extralen = FONFXC_PAD_LEN;

	return 0;
}