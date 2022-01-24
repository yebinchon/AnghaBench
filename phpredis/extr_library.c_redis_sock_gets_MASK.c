#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ port; int /*<<< orphan*/  host; int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ RedisSock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int,size_t*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char**,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

int
FUNC7(RedisSock *redis_sock, char *buf, int buf_size,
                size_t *line_size)
{
    // Handle EOF
    if(-1 == FUNC4(redis_sock, 0)) {
        return -1;
    }

    if(FUNC3(redis_sock->stream, buf, buf_size, line_size)
                           == NULL)
    {
        char *errmsg = NULL;

        if (redis_sock->port < 0) {
            FUNC6(&errmsg, 0, "read error on connection to %s", FUNC1(redis_sock->host));
        } else {
            FUNC6(&errmsg, 0, "read error on connection to %s:%d", FUNC1(redis_sock->host), redis_sock->port);
        }
        // Close our socket
        FUNC5(redis_sock, 1);

        // Throw a read error exception
        FUNC0(errmsg, 0);
        FUNC2(errmsg);
        return -1;
    }

    /* We don't need \r\n */
    *line_size-=2;
    buf[*line_size]='\0';

    /* Success! */
    return 0;
}