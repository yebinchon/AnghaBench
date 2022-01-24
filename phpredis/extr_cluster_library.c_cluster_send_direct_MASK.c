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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ RedisSock ;
typedef  int /*<<< orphan*/  REDIS_REPLY_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(RedisSock *redis_sock, char *cmd, int cmd_len,
                               REDIS_REPLY_TYPE type)
{
    char buf[1024];

    /* Connect to the socket if we aren't yet and send our command, validate the reply type, and consume the first line */
    if (!FUNC0(redis_sock,cmd,cmd_len) ||
        !FUNC1(redis_sock, type) ||
        !FUNC2(redis_sock->stream, buf, sizeof(buf))) return -1;

    /* Success! */
    return 0;
}