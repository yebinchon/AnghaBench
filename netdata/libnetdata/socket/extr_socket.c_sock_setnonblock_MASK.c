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

/* Variables and functions */
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,...) ; 

int FUNC2(int fd) {
    int flags;

    flags = FUNC1(fd, F_GETFL);
    flags |= O_NONBLOCK;

    int ret = FUNC1(fd, F_SETFL, flags);
    if(ret < 0)
        FUNC0("Failed to set O_NONBLOCK on socket %d", fd);

    return ret;
}