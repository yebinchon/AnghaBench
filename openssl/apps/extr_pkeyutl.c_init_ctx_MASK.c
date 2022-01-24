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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ EVP_PKEY_EC ; 
#define  EVP_PKEY_OP_DECRYPT 137 
#define  EVP_PKEY_OP_DERIVE 136 
#define  EVP_PKEY_OP_ENCRYPT 135 
#define  EVP_PKEY_OP_SIGN 134 
#define  EVP_PKEY_OP_VERIFY 133 
#define  EVP_PKEY_OP_VERIFYRECOVER 132 
 int /*<<< orphan*/  EVP_PKEY_SM2 ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
#define  KEY_CERT 131 
#define  KEY_NONE 130 
#define  KEY_PRIVKEY 129 
#define  KEY_PUBKEY 128 
 int NID_sm2 ; 
 int NID_undef ; 
 int FUNC17 (char const*) ; 
 int FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC23 (char const*,int,char*) ; 
 int /*<<< orphan*/ * FUNC24 (char const*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC25 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static EVP_PKEY_CTX *FUNC26(const char *kdfalg, int *pkeysize,
                              const char *keyfile, int keyform, int key_type,
                              char *passinarg, int pkey_op, ENGINE *e,
                              const int engine_impl, int rawin,
                              EVP_PKEY **ppkey)
{
    EVP_PKEY *pkey = NULL;
    EVP_PKEY_CTX *ctx = NULL;
    ENGINE *impl = NULL;
    char *passin = NULL;
    int rv = -1;
    X509 *x;
    if (((pkey_op == EVP_PKEY_OP_SIGN) || (pkey_op == EVP_PKEY_OP_DECRYPT)
         || (pkey_op == EVP_PKEY_OP_DERIVE))
        && (key_type != KEY_PRIVKEY && kdfalg == NULL)) {
        FUNC0(bio_err, "A private key is needed for this operation\n");
        goto end;
    }
    if (!FUNC22(passinarg, NULL, &passin, NULL)) {
        FUNC0(bio_err, "Error getting password\n");
        goto end;
    }
    switch (key_type) {
    case KEY_PRIVKEY:
        pkey = FUNC24(keyfile, keyform, 0, passin, e, "Private Key");
        break;

    case KEY_PUBKEY:
        pkey = FUNC25(keyfile, keyform, 0, NULL, e, "Public Key");
        break;

    case KEY_CERT:
        x = FUNC23(keyfile, keyform, "Certificate");
        if (x) {
            pkey = FUNC21(x);
            FUNC20(x);
        }
        break;

    case KEY_NONE:
        break;

    }

#ifndef OPENSSL_NO_ENGINE
    if (engine_impl)
        impl = e;
#endif

    if (kdfalg != NULL) {
        int kdfnid = FUNC18(kdfalg);

        if (kdfnid == NID_undef) {
            kdfnid = FUNC17(kdfalg);
            if (kdfnid == NID_undef) {
                FUNC0(bio_err, "The given KDF \"%s\" is unknown.\n",
                           kdfalg);
                goto end;
            }
        }
        ctx = FUNC5(kdfnid, impl);
    } else {
        if (pkey == NULL)
            goto end;

#ifndef OPENSSL_NO_EC
        /* SM2 needs a special treatment */
        if (FUNC11(pkey) == EVP_PKEY_EC) {
            EC_KEY *eckey = NULL;
            const EC_GROUP *group = NULL;
            int nid;

            if ((eckey = FUNC10(pkey)) == NULL
                    || (group = FUNC2(eckey)) == NULL
                    || (nid = FUNC1(group)) == 0)
                goto end;
            if (nid == NID_sm2)
                FUNC12(pkey, EVP_PKEY_SM2);
        }
#endif
        *pkeysize = FUNC14(pkey);
        ctx = FUNC4(pkey, impl);
        if (ppkey != NULL)
            *ppkey = pkey;
        FUNC9(pkey);
    }

    if (ctx == NULL)
        goto end;

    /*
     * If rawin then we don't need to actually initialise the EVP_PKEY_CTX
     * itself. That will get initialised during EVP_DigestSignInit or
     * EVP_DigestVerifyInit.
     */
    if (rawin) {
        rv = 1;
    } else {
        switch (pkey_op) {
        case EVP_PKEY_OP_SIGN:
            rv = FUNC13(ctx);
            break;

        case EVP_PKEY_OP_VERIFY:
            rv = FUNC15(ctx);
            break;

        case EVP_PKEY_OP_VERIFYRECOVER:
            rv = FUNC16(ctx);
            break;

        case EVP_PKEY_OP_ENCRYPT:
            rv = FUNC8(ctx);
            break;

        case EVP_PKEY_OP_DECRYPT:
            rv = FUNC6(ctx);
            break;

        case EVP_PKEY_OP_DERIVE:
            rv = FUNC7(ctx);
            break;
        }
    }

    if (rv <= 0) {
        FUNC3(ctx);
        ctx = NULL;
    }

 end:
    FUNC19(passin);
    return ctx;

}