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
struct idmap_lookup {int dummy; } ;
struct idmap_config {int /*<<< orphan*/ * attributes; int /*<<< orphan*/  base; } ;
struct idmap_context {int /*<<< orphan*/  ldap; struct idmap_config config; } ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  LDAPMessage ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int const,int) ; 
 int FILTER_LEN ; 
 int LDAP_NO_RESULTS_RETURNED ; 
 int LDAP_NO_SUCH_ATTRIBUTE ; 
 int /*<<< orphan*/  LDAP_SCOPE_SUBTREE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,...) ; 
 int FUNC3 (struct idmap_config*,struct idmap_lookup const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC9(
    struct idmap_context *context,
    const struct idmap_lookup *lookup,
    const unsigned attributes,
    const unsigned optional,
    PCHAR *values[],
    const int len)
{
    char filter[FILTER_LEN];
    struct idmap_config *config = &context->config;
    LDAPMessage *res = NULL, *entry;
    int i, status;

    /* format the ldap filter */
    status = FUNC3(config, lookup, filter, FILTER_LEN);
    if (status)
        goto out;

    /* send the ldap query */
    status = FUNC8(context->ldap, config->base,
        LDAP_SCOPE_SUBTREE, filter, NULL, 0, NULL, &res);
    if (status) {
        FUNC2("ldap search for '%s' failed with %d: %s\n",
            filter, status, FUNC4(status));
        status = FUNC1(status);
        goto out;
    }

    entry = FUNC5(context->ldap, res);
    if (entry == NULL) {
        status = LDAP_NO_RESULTS_RETURNED;
        FUNC2("ldap search for '%s' failed with %d: %s\n",
            filter, status, FUNC4(status));
        status = FUNC1(status);
        goto out;
    }

    /* fetch the attributes */
    for (i = 0; i < len; i++) {
        if (FUNC0(attributes, i)) {
            values[i] = FUNC6(context->ldap,
                entry, config->attributes[i]);

            /* fail if required attributes are missing */
            if (values[i] == NULL && !FUNC0(optional, i)) {
                status = LDAP_NO_SUCH_ATTRIBUTE;
                FUNC2("ldap entry for '%s' missing required "
                    "attribute '%s', returning %d: %s\n",
                    filter, config->attributes[i],
                    status, FUNC4(status));
                status = FUNC1(status);
                goto out;
            }
        }
    }
out:
    if (res) FUNC7(res);
    return status;
}