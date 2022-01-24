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
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC3(SOCKET fd, void *buf, size_t buf_size)
{
    size_t count = 0;

    while (count < buf_size) {
        size_t bytes_received;

        bytes_received = FUNC2(fd, (char*)buf+count, 1, 0);
        if (bytes_received == 0) {
            FUNC0(0, "redis: recv_line() failed\n");
            FUNC1(1);
        }
        count++;
        if (((unsigned char*)buf)[count-1] == '\n')
            break;
    }

    return count;
}