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
struct timeval {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct Output {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct Output*,unsigned char*,size_t) ; 
 size_t FUNC5 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*) ; 

__attribute__((used)) static int
FUNC7(struct Output *out, SOCKET fd)
{
    fd_set readfds;
    struct timeval tv = {0,0};
    int x;
    int nfds;
    unsigned char buf[1024];
    size_t bytes_read;

    FUNC1(&readfds);
#ifdef _MSC_VER
#pragma warning(disable:4127)
#endif
    FUNC0(fd, &readfds);
    nfds = (int)fd;

    x = FUNC6(nfds, &readfds, 0, 0, &tv);
    if (x == 0)
        return 1;
    if (x < 0) {
        FUNC2(0, "redis:select() failed\n");
        FUNC3(1);
    }
    if (x != 1) {
        FUNC2(0, "redis:select() failed\n");
        FUNC3(1);
    }

    /*
     * Data exists, so parse it
     */
    bytes_read = FUNC5(fd, (char*)buf, sizeof(buf), 0);
    if (bytes_read == 0) {
        FUNC2(0, "redis:recv() failed\n");
        FUNC3(1);
    }

    return FUNC4(out, buf, bytes_read);
}