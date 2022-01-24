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
typedef  int /*<<< orphan*/  RedisSock ;

/* Variables and functions */
 int FAILURE ; 
 int FUNC0 (char**,char*,char*) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC5(RedisSock *redis_sock)
{
    int result = FAILURE;
    char *cmd, *resp;
    int resp_len, cmd_len;

    /* format our discard command */
    cmd_len = FUNC0(&cmd, "DISCARD", "");

    /* send our DISCARD command */
    if (FUNC3(redis_sock, cmd, cmd_len) >= 0 &&
       (resp = FUNC2(redis_sock,&resp_len)) != NULL)
    {
        /* success if we get OK */
        result = (resp_len == 3 && FUNC4(resp,"+OK", 3) == 0) ? SUCCESS:FAILURE;

        /* free our response */
        FUNC1(resp);
    }

    /* free our command */
    FUNC1(cmd);

    /* return success/failure */
    return result;
}