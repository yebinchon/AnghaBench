#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ value_type; int (* cmd ) (TYPE_2__*,char const*) ;} ;
typedef  TYPE_1__ ssl_conf_cmd_tbl ;
struct TYPE_11__ {int flags; } ;
typedef  TYPE_2__ SSL_CONF_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,...) ; 
 int SSL_CONF_FLAG_SHOW_ERRORS ; 
 scalar_t__ SSL_CONF_TYPE_NONE ; 
 int /*<<< orphan*/  SSL_F_SSL_CONF_CMD ; 
 int /*<<< orphan*/  SSL_R_BAD_VALUE ; 
 int /*<<< orphan*/  SSL_R_INVALID_NULL_CMD_NAME ; 
 int /*<<< orphan*/  SSL_R_UNKNOWN_CMD_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__ const*) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const**) ; 
 int FUNC5 (TYPE_2__*,char const*) ; 

int FUNC6(SSL_CONF_CTX *cctx, const char *cmd, const char *value)
{
    const ssl_conf_cmd_tbl *runcmd;
    if (cmd == NULL) {
        FUNC1(SSL_F_SSL_CONF_CMD, SSL_R_INVALID_NULL_CMD_NAME);
        return 0;
    }

    if (!FUNC4(cctx, &cmd))
        return -2;

    runcmd = FUNC3(cctx, cmd);

    if (runcmd) {
        int rv;
        if (runcmd->value_type == SSL_CONF_TYPE_NONE) {
            return FUNC2(cctx, runcmd);
        }
        if (value == NULL)
            return -3;
        rv = runcmd->cmd(cctx, value);
        if (rv > 0)
            return 2;
        if (rv == -2)
            return -2;
        if (cctx->flags & SSL_CONF_FLAG_SHOW_ERRORS) {
            FUNC1(SSL_F_SSL_CONF_CMD, SSL_R_BAD_VALUE);
            FUNC0(4, "cmd=", cmd, ", value=", value);
        }
        return 0;
    }

    if (cctx->flags & SSL_CONF_FLAG_SHOW_ERRORS) {
        FUNC1(SSL_F_SSL_CONF_CMD, SSL_R_UNKNOWN_CMD_NAME);
        FUNC0(2, "cmd=", cmd);
    }

    return -2;
}