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
 int /*<<< orphan*/  AF_UNSPEC ; 
 int SD_LISTEN_FDS_START ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(void)
{
    int fd = SD_LISTEN_FDS_START;

    if (!FUNC1(fd, AF_UNSPEC, SOCK_STREAM, 1, 0))
        FUNC0("Passed file descriptor is not a "
                             "listening TCP socket");

    return FUNC2(fd);
}