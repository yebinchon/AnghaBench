#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ RedisSock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

char *
FUNC6(RedisSock *redis_sock, int bytes)
{
    int offset = 0, nbytes;
    char *reply;
    size_t got;

    if (-1 == bytes || -1 == FUNC5(redis_sock, 0)) {
        return NULL;
    }

    nbytes = bytes + 2;
    /* Allocate memory for string */
    reply = FUNC2(nbytes);

    /* Consume bulk string */
    while (offset < nbytes) {
        got = FUNC4(redis_sock->stream, reply + offset, nbytes - offset);
        if (got == 0 && FUNC3(redis_sock->stream)) break;
        offset += got;
    }

    /* Protect against reading too few bytes */
    if (offset < nbytes) {
        /* Error or EOF */
        FUNC0("socket error on read socket", 0);
        FUNC1(reply);
        return NULL;
    }

    /* Null terminate reply string */
    reply[bytes] = '\0';

    return reply;
}