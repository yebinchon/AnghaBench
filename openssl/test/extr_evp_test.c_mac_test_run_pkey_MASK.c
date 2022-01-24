#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* err; TYPE_1__* data; } ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  output_len; int /*<<< orphan*/  output; int /*<<< orphan*/  input_len; int /*<<< orphan*/  input; int /*<<< orphan*/  controls; int /*<<< orphan*/ * alg; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ MAC_DATA ;
typedef  TYPE_2__ EVP_TEST ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  unsigned char EVP_MD_CTX ;
typedef  unsigned char EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ **,unsigned char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 () ; 
 scalar_t__ EVP_PKEY_CMAC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ EVP_PKEY_HMAC ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*) ; 
 unsigned char* FUNC13 (size_t) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC21(EVP_TEST *t)
{
    MAC_DATA *expected = t->data;
    EVP_MD_CTX *mctx = NULL;
    EVP_PKEY_CTX *pctx = NULL, *genctx = NULL;
    EVP_PKEY *key = NULL;
    const EVP_MD *md = NULL;
    unsigned char *got = NULL;
    size_t got_len;
    int i;

    if (expected->alg == NULL)
        FUNC14("Trying the EVP_PKEY %s test", FUNC11(expected->type));
    else
        FUNC14("Trying the EVP_PKEY %s test with %s",
                  FUNC11(expected->type), expected->alg);

#ifdef OPENSSL_NO_DES
    if (expected->alg != NULL && strstr(expected->alg, "DES") != NULL) {
        /* Skip DES */
        t->err = NULL;
        goto err;
    }
#endif

    if (expected->type == EVP_PKEY_CMAC)
        key = FUNC7(NULL, expected->key, expected->key_len,
                                    FUNC9(expected->alg));
    else
        key = FUNC8(expected->type, NULL, expected->key,
                                           expected->key_len);
    if (key == NULL) {
        t->err = "MAC_KEY_CREATE_ERROR";
        goto err;
    }

    if (expected->type == EVP_PKEY_HMAC) {
        if (!FUNC15(md = FUNC10(expected->alg))) {
            t->err = "MAC_ALGORITHM_SET_ERROR";
            goto err;
        }
    }
    if (!FUNC15(mctx = FUNC4())) {
        t->err = "INTERNAL_ERROR";
        goto err;
    }
    if (!FUNC1(mctx, &pctx, md, NULL, key)) {
        t->err = "DIGESTSIGNINIT_ERROR";
        goto err;
    }
    for (i = 0; i < FUNC18(expected->controls); i++)
        if (!FUNC16(t, pctx,
                                FUNC19(expected->controls,
                                                        i))) {
            t->err = "EVPPKEYCTXCTRL_ERROR";
            goto err;
        }
    if (!FUNC2(mctx, expected->input, expected->input_len)) {
        t->err = "DIGESTSIGNUPDATE_ERROR";
        goto err;
    }
    if (!FUNC0(mctx, NULL, &got_len)) {
        t->err = "DIGESTSIGNFINAL_LENGTH_ERROR";
        goto err;
    }
    if (!FUNC15(got = FUNC13(got_len))) {
        t->err = "TEST_FAILURE";
        goto err;
    }
    if (!FUNC0(mctx, got, &got_len)
            || !FUNC17(t, "TEST_MAC_ERR",
                                   expected->output, expected->output_len,
                                   got, got_len)) {
        t->err = "TEST_MAC_ERR";
        goto err;
    }
    t->err = NULL;
 err:
    FUNC3(mctx);
    FUNC12(got);
    FUNC5(genctx);
    FUNC6(key);
    return 1;
}