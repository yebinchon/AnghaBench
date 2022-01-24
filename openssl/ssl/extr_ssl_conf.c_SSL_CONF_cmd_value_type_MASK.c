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
struct TYPE_3__ {int value_type; } ;
typedef  TYPE_1__ ssl_conf_cmd_tbl ;
typedef  int /*<<< orphan*/  SSL_CONF_CTX ;

/* Variables and functions */
 int SSL_CONF_TYPE_UNKNOWN ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const**) ; 

int FUNC2(SSL_CONF_CTX *cctx, const char *cmd)
{
    if (FUNC1(cctx, &cmd)) {
        const ssl_conf_cmd_tbl *runcmd;
        runcmd = FUNC0(cctx, cmd);
        if (runcmd)
            return runcmd->value_type;
    }
    return SSL_CONF_TYPE_UNKNOWN;
}