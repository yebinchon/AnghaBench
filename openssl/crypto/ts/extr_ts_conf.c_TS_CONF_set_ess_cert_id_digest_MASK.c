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
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  CONF ;

/* Variables and functions */
 int /*<<< orphan*/  ENV_ESS_CERT_ID_ALG ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 

int FUNC4(CONF *conf, const char *section,
                                   TS_RESP_CTX *ctx)
{
    int ret = 0;
    const EVP_MD *cert_md = NULL;
    const char *md = FUNC1(conf, section, ENV_ESS_CERT_ID_ALG);

    if (md == NULL)
        md = "sha1";

    cert_md = FUNC0(md);
    if (cert_md == NULL) {
        FUNC3(section, ENV_ESS_CERT_ID_ALG);
        goto err;
    }

    if (!FUNC2(ctx, cert_md))
        goto err;

    ret = 1;
err:
    return ret;
}