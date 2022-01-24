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
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int FUNC0 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(int fd)
{
    int flags = FUNC0(fd, F_GETFD);
    if (flags < 0)
        FUNC1("Could not obtain socket flags");
    if (FUNC0(fd, F_SETFD, flags | FD_CLOEXEC) < 0)
        FUNC1("Could not set socket flags");

    flags = FUNC0(fd, F_GETFL);
    if (flags < 0)
        FUNC1("Could not obtain socket flags");
    if (FUNC0(fd, F_SETFL, flags | O_NONBLOCK) < 0)
        FUNC1("Could not set socket flags");

    return fd;
}