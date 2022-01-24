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
typedef  int /*<<< orphan*/  TS_TST_INFO ;
typedef  int /*<<< orphan*/  TS_RESP ;
typedef  int /*<<< orphan*/  PKCS7 ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  CONF ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORMAT_ASN1 ; 
 int /*<<< orphan*/  FORMAT_TEXT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char const*,char const*,char const*,char const*,char const*,int /*<<< orphan*/  const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(CONF *conf, const char *section, const char *engine,
                         const char *queryfile, const char *passin, const char *inkey,
                         const EVP_MD *md, const char *signer, const char *chain,
                         const char *policy, const char *in, int token_in,
                         const char *out, int token_out, int text)
{
    int ret = 0;
    TS_RESP *response = NULL;
    BIO *in_bio = NULL;
    BIO *query_bio = NULL;
    BIO *inkey_bio = NULL;
    BIO *signer_bio = NULL;
    BIO *out_bio = NULL;

    if (in != NULL) {
        if ((in_bio = FUNC1(in, "rb")) == NULL)
            goto end;
        if (token_in) {
            response = FUNC14(in_bio);
        } else {
            response = FUNC11(in_bio, NULL);
        }
    } else {
        response = FUNC10(conf, section, engine, queryfile,
                                   passin, inkey, md, signer, chain, policy);
        if (response != NULL)
            FUNC2(bio_err, "Response has been generated.\n");
        else
            FUNC2(bio_err, "Response is not generated.\n");
    }
    if (response == NULL)
        goto end;

    /* Write response. */
    if (text) {
        if ((out_bio = FUNC9(out, 'w', FORMAT_TEXT)) == NULL)
        goto end;
        if (token_out) {
            TS_TST_INFO *tst_info = FUNC6(response);
            if (!FUNC8(out_bio, tst_info))
                goto end;
        } else {
            if (!FUNC7(out_bio, response))
                goto end;
        }
    } else {
        if ((out_bio = FUNC9(out, 'w', FORMAT_ASN1)) == NULL)
            goto end;
        if (token_out) {
            PKCS7 *token = FUNC5(response);
            if (!FUNC12(out_bio, token))
                goto end;
        } else {
            if (!FUNC13(out_bio, response))
                goto end;
        }
    }

    ret = 1;

 end:
    FUNC3(bio_err);
    FUNC0(in_bio);
    FUNC0(query_bio);
    FUNC0(inkey_bio);
    FUNC0(signer_bio);
    FUNC0(out_bio);
    FUNC4(response);
    return ret;
}