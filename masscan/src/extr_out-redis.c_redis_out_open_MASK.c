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
struct Output {int dummy; } ;
typedef  scalar_t__ ptrdiff_t ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  SOCKET ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct Output*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned char*,char*,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct Output *out, FILE *fp)
{
    ptrdiff_t fd = (ptrdiff_t)fp;
    size_t count;
    unsigned char line[1024];

    FUNC1(out);

    count = FUNC5((SOCKET)fd, "PING\r\n", 6, 0);
    if (count != 6) {
        FUNC0(0, "redis: send(ping) failed\n");
        FUNC2(1);
    }

    count = FUNC4((SOCKET)fd, line, sizeof(line));
    if (count != 7 && FUNC3(line, "+PONG\r\n", 7) != 0) {
        FUNC0(0, "redis: unexpected response from redis server: %s\n", line);
        FUNC2(1);
    }
}