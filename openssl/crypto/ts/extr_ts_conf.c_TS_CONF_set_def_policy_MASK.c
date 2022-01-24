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
typedef  int /*<<< orphan*/  TS_RESP_CTX ;
typedef  int /*<<< orphan*/  CONF ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENV_DEFAULT_POLICY ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 

int FUNC6(CONF *conf, const char *section,
                           const char *policy, TS_RESP_CTX *ctx)
{
    int ret = 0;
    ASN1_OBJECT *policy_obj = NULL;

    if (policy == NULL)
        policy = FUNC1(conf, section, ENV_DEFAULT_POLICY);
    if (policy == NULL) {
        FUNC5(section, ENV_DEFAULT_POLICY);
        goto err;
    }
    if ((policy_obj = FUNC2(policy, 0)) == NULL) {
        FUNC4(section, ENV_DEFAULT_POLICY);
        goto err;
    }
    if (!FUNC3(ctx, policy_obj))
        goto err;

    ret = 1;
 err:
    FUNC0(policy_obj);
    return ret;
}