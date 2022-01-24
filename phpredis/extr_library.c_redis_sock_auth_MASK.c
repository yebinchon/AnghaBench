#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  auth; } ;
typedef  TYPE_1__ RedisSock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char*,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,char**,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

int
FUNC7(RedisSock *redis_sock)
{
    char *cmd, *response;
    int cmd_len, response_len;

    cmd_len = FUNC5(redis_sock, NULL, &cmd, "AUTH", "s",
                             FUNC1(redis_sock->auth), FUNC0(redis_sock->auth));

    if (FUNC4(redis_sock, cmd, cmd_len) < 0) {
        FUNC2(cmd);
        return -1;
    }

    FUNC2(cmd);

    response = FUNC3(redis_sock, &response_len);
    if (response == NULL) {
        return -1;
    }

    if (FUNC6(response, "+OK", 3)) {
        FUNC2(response);
        return -1;
    }

    FUNC2(response);
    return 0;
}