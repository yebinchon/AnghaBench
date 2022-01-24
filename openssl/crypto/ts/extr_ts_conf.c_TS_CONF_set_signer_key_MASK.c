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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  CONF ;

/* Variables and functions */
 int /*<<< orphan*/  ENV_SIGNER_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 

int FUNC5(CONF *conf, const char *section,
                           const char *key, const char *pass,
                           TS_RESP_CTX *ctx)
{
    int ret = 0;
    EVP_PKEY *key_obj = NULL;
    if (!key)
        key = FUNC1(conf, section, ENV_SIGNER_KEY);
    if (!key) {
        FUNC4(section, ENV_SIGNER_KEY);
        goto err;
    }
    if ((key_obj = FUNC2(key, pass)) == NULL)
        goto err;
    if (!FUNC3(ctx, key_obj))
        goto err;

    ret = 1;
 err:
    FUNC0(key_obj);
    return ret;
}