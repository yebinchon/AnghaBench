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
typedef  int /*<<< orphan*/  TS_RESP ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  CONF ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  serial_cb ; 

__attribute__((used)) static TS_RESP *FUNC23(CONF *conf, const char *section, const char *engine,
                                const char *queryfile, const char *passin,
                                const char *inkey, const EVP_MD *md, const char *signer,
                                const char *chain, const char *policy)
{
    int ret = 0;
    TS_RESP *response = NULL;
    BIO *query_bio = NULL;
    TS_RESP_CTX *resp_ctx = NULL;

    if ((query_bio = FUNC1(queryfile, "rb")) == NULL)
        goto end;
    if ((section = FUNC2(conf, section)) == NULL)
        goto end;
    if ((resp_ctx = FUNC19()) == NULL)
        goto end;
    if (!FUNC13(conf, section, serial_cb, resp_ctx))
        goto end;
# ifndef OPENSSL_NO_ENGINE
    if (!FUNC6(conf, section, engine))
        goto end;
# endif
    if (!FUNC14(conf, section, signer, resp_ctx))
        goto end;
    if (!FUNC4(conf, section, chain, resp_ctx))
        goto end;
    if (!FUNC16(conf, section, inkey, passin, resp_ctx))
        goto end;

    if (md) {
        if (!FUNC20(resp_ctx, md))
            goto end;
    } else if (!FUNC15(conf, section, NULL, resp_ctx)) {
            goto end;
    }

    if (!FUNC10(conf, section, resp_ctx))
        goto end;
    if (!FUNC7(conf, section, policy, resp_ctx))
        goto end;
    if (!FUNC12(conf, section, resp_ctx))
        goto end;
    if (!FUNC8(conf, section, resp_ctx))
        goto end;
    if (!FUNC3(conf, section, resp_ctx))
        goto end;
    if (!FUNC5(conf, section, resp_ctx))
        goto end;
    if (!FUNC11(conf, section, resp_ctx))
        goto end;
    if (!FUNC17(conf, section, resp_ctx))
        goto end;
    if (!FUNC9(conf, section, resp_ctx))
        goto end;
    if ((response = FUNC21(resp_ctx, query_bio)) == NULL)
        goto end;
    ret = 1;

 end:
    if (!ret) {
        FUNC22(response);
        response = NULL;
    }
    FUNC18(resp_ctx);
    FUNC0(query_bio);
    return response;
}