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
typedef  int zend_bool ;
struct TYPE_3__ {int /*<<< orphan*/  pure_cmds; } ;
typedef  TYPE_1__ RedisArray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 char FUNC2 (char const) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

zend_bool
FUNC4(RedisArray *ra, const char *cmd, int cmd_len) {

    zend_bool ret;
    int i;
    char *cmd_up = FUNC1(1 + cmd_len);
    /* convert to uppercase */
    for(i = 0; i < cmd_len; ++i)
        cmd_up[i] = FUNC2(cmd[i]);
    cmd_up[cmd_len] = 0;

    ret = FUNC3(ra->pure_cmds, cmd_up, cmd_len);

    FUNC0(cmd_up);
    return !ret;
}