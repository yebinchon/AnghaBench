#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int version; int timeout; int /*<<< orphan*/  hostname; int /*<<< orphan*/  port; } ;
struct idmap_context {TYPE_1__ config; int /*<<< orphan*/ * ldap; int /*<<< orphan*/  groups; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  LDAP_OPT_PROTOCOL_VERSION ; 
 int /*<<< orphan*/  LDAP_OPT_TIMELIMIT ; 
 int LDAP_SUCCESS ; 
 int FUNC1 () ; 
 int FUNC2 (int) ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct idmap_context* FUNC4 (int,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  group_cache_ops ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct idmap_context*) ; 
 int /*<<< orphan*/  user_cache_ops ; 

int FUNC11(
    struct idmap_context **context_out)
{
    struct idmap_context *context;
    int status = NO_ERROR;

    context = FUNC4(1, sizeof(struct idmap_context));
    if (context == NULL) {
        status = FUNC0();
        goto out;
    }

    /* initialize the caches */
    FUNC3(&context->users, &user_cache_ops);
    FUNC3(&context->groups, &group_cache_ops);

    /* load ldap configuration from file */
    status = FUNC5(&context->config);
    if (status) {
        FUNC6("config_init() failed with %d\n", status);
        goto out_err_free;
    }

    /* initialize ldap and configure options */
    context->ldap = FUNC8(context->config.hostname, context->config.port);
    if (context->ldap == NULL) {
        status = FUNC1();
        FUNC6("ldap_init(%s) failed with %d: %s\n",
            context->config.hostname, status, FUNC7(status));
        status = FUNC2(status);
        goto out_err_free;
    }

    status = FUNC9(context->ldap, LDAP_OPT_PROTOCOL_VERSION,
        (void *)&context->config.version);
    if (status != LDAP_SUCCESS) {
        FUNC6("ldap_set_option(version=%d) failed with %d\n",
            context->config.version, status);
        status = FUNC2(status);
        goto out_err_free;
    }

    if (context->config.timeout) {
        status = FUNC9(context->ldap, LDAP_OPT_TIMELIMIT,
            (void *)&context->config.timeout);
        if (status != LDAP_SUCCESS) {
            FUNC6("ldap_set_option(timeout=%d) failed with %d\n",
                context->config.timeout, status);
            status = FUNC2(status);
            goto out_err_free;
        }
    }

    *context_out = context;
out:
    return status;

out_err_free:
    FUNC10(context);
    goto out;
}