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
struct TYPE_6__ {int /*<<< orphan*/  dbNumber; } ;
typedef  TYPE_1__ RedisSock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,char**,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int FUNC5(RedisSock *redis_sock) {
    char *cmd, *response;
    int cmd_len, response_len;

    cmd_len = FUNC3(redis_sock, NULL, &cmd, "SELECT", "d",
                             redis_sock->dbNumber);

    if (FUNC2(redis_sock, cmd, cmd_len) < 0) {
        FUNC0(cmd);
        return -1;
    }

    FUNC0(cmd);

    if ((response = FUNC1(redis_sock, &response_len)) == NULL) {
        return -1;
    }

    if (FUNC4(response, "+OK", 3)) {
        FUNC0(response);
        return -1;
    }

    FUNC0(response);
    return 0;
}