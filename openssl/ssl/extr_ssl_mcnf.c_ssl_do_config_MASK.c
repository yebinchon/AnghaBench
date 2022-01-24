#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* method; } ;
struct TYPE_9__ {TYPE_1__* method; } ;
struct TYPE_8__ {scalar_t__ ssl_accept; scalar_t__ ssl_connect; } ;
typedef  TYPE_1__ SSL_METHOD ;
typedef  TYPE_2__ SSL_CTX ;
typedef  int /*<<< orphan*/  SSL_CONF_CTX ;
typedef  int /*<<< orphan*/  SSL_CONF_CMD ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 unsigned int SSL_CONF_FLAG_CERTIFICATE ; 
 unsigned int SSL_CONF_FLAG_CLIENT ; 
 unsigned int SSL_CONF_FLAG_FILE ; 
 unsigned int SSL_CONF_FLAG_REQUIRE_PRIVATE ; 
 unsigned int SSL_CONF_FLAG_SERVER ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  SSL_F_SSL_DO_CONFIG ; 
 int /*<<< orphan*/  SSL_R_BAD_VALUE ; 
 int /*<<< orphan*/  SSL_R_INVALID_CONFIGURATION_NAME ; 
 int /*<<< orphan*/  SSL_R_UNKNOWN_COMMAND ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (size_t,char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,size_t,char**,char**) ; 
 int /*<<< orphan*/  FUNC11 (char const*,size_t*) ; 
 scalar_t__ ssl_undefined_function ; 

__attribute__((used)) static int FUNC12(SSL *s, SSL_CTX *ctx, const char *name, int system)
{
    SSL_CONF_CTX *cctx = NULL;
    size_t i, idx, cmd_count;
    int rv = 0;
    unsigned int flags;
    const SSL_METHOD *meth;
    const SSL_CONF_CMD *cmds;

    if (s == NULL && ctx == NULL) {
        FUNC8(SSL_F_SSL_DO_CONFIG, ERR_R_PASSED_NULL_PARAMETER);
        goto err;
    }

    if (name == NULL && system)
        name = "system_default";
    if (!FUNC11(name, &idx)) {
        if (!system) {
            FUNC8(SSL_F_SSL_DO_CONFIG, SSL_R_INVALID_CONFIGURATION_NAME);
            FUNC0(2, "name=", name);
        }
        goto err;
    }
    cmds = FUNC9(idx, &name, &cmd_count);
    cctx = FUNC3();
    if (cctx == NULL)
        goto err;
    flags = SSL_CONF_FLAG_FILE;
    if (!system)
        flags |= SSL_CONF_FLAG_CERTIFICATE | SSL_CONF_FLAG_REQUIRE_PRIVATE;
    if (s != NULL) {
        meth = s->method;
        FUNC5(cctx, s);
    } else {
        meth = ctx->method;
        FUNC6(cctx, ctx);
    }
    if (meth->ssl_accept != ssl_undefined_function)
        flags |= SSL_CONF_FLAG_SERVER;
    if (meth->ssl_connect != ssl_undefined_function)
        flags |= SSL_CONF_FLAG_CLIENT;
    FUNC4(cctx, flags);
    for (i = 0; i < cmd_count; i++) {
        char *cmdstr, *arg;

        FUNC10(cmds, i, &cmdstr, &arg);
        rv = FUNC7(cctx, cmdstr, arg);
        if (rv <= 0) {
            if (rv == -2)
                FUNC8(SSL_F_SSL_DO_CONFIG, SSL_R_UNKNOWN_COMMAND);
            else
                FUNC8(SSL_F_SSL_DO_CONFIG, SSL_R_BAD_VALUE);
            FUNC0(6, "section=", name, ", cmd=", cmdstr,
                               ", arg=", arg);
            goto err;
        }
    }
    rv = FUNC1(cctx);
 err:
    FUNC2(cctx);
    return rv <= 0 ? 0 : 1;
}