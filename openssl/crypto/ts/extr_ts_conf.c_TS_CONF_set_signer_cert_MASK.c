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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  TS_RESP_CTX ;
typedef  int /*<<< orphan*/  CONF ;

/* Variables and functions */
 int /*<<< orphan*/  ENV_SIGNER_CERT ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 

int FUNC5(CONF *conf, const char *section,
                            const char *cert, TS_RESP_CTX *ctx)
{
    int ret = 0;
    X509 *cert_obj = NULL;

    if (cert == NULL) {
        cert = FUNC0(conf, section, ENV_SIGNER_CERT);
        if (cert == NULL) {
            FUNC4(section, ENV_SIGNER_CERT);
            goto err;
        }
    }
    if ((cert_obj = FUNC1(cert)) == NULL)
        goto err;
    if (!FUNC2(ctx, cert_obj))
        goto err;

    ret = 1;
 err:
    FUNC3(cert_obj);
    return ret;
}