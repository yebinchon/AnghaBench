#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int retries; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ socket_obj_t ;

/* Variables and functions */
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  MP_ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(socket_obj_t *sock, const char *data, size_t datalen) {
    int sentlen = 0;
    for (int i=0; i<=sock->retries && sentlen < datalen; i++) {
        FUNC1();
        int r = FUNC4(sock->fd, data+sentlen, datalen-sentlen);
        FUNC0();
        if (r < 0 && errno != EWOULDBLOCK) FUNC3(errno);
        if (r > 0) sentlen += r;
        FUNC2();
    }
    if (sentlen == 0) FUNC5(MP_ETIMEDOUT);
    return sentlen;
}