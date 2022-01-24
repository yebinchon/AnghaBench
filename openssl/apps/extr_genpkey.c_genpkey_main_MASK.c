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
typedef  int OPTION_CHOICE ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EVP_CIPH_CCM_MODE ; 
 int /*<<< orphan*/  EVP_CIPH_GCM_MODE ; 
 int /*<<< orphan*/  EVP_CIPH_OCB_MODE ; 
 int /*<<< orphan*/  EVP_CIPH_XTS_MODE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FORMAT_ASN1 ; 
 int FORMAT_PEM ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
#define  OPT_ALGORITHM 140 
#define  OPT_CIPHER 139 
#define  OPT_ENGINE 138 
#define  OPT_EOF 137 
#define  OPT_ERR 136 
 int /*<<< orphan*/  OPT_FMT_PEMDER ; 
#define  OPT_GENPARAM 135 
#define  OPT_HELP 134 
#define  OPT_OUT 133 
#define  OPT_OUTFORM 132 
#define  OPT_PARAMFILE 131 
#define  OPT_PASS 130 
#define  OPT_PKEYOPT 129 
#define  OPT_TEXT 128 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC19 (char*,int,int) ; 
 int /*<<< orphan*/  genpkey_cb ; 
 int /*<<< orphan*/  genpkey_options ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *) ; 
 char* FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 char* FUNC27 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC28 () ; 
 int FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC33 (char*,int /*<<< orphan*/ ) ; 

int FUNC34(int argc, char **argv)
{
    BIO *in = NULL, *out = NULL;
    ENGINE *e = NULL;
    EVP_PKEY *pkey = NULL;
    EVP_PKEY_CTX *ctx = NULL;
    char *outfile = NULL, *passarg = NULL, *pass = NULL, *prog;
    const EVP_CIPHER *cipher = NULL;
    OPTION_CHOICE o;
    int outformat = FORMAT_PEM, text = 0, ret = 1, rv, do_param = 0;
    int private = 0;

    prog = FUNC27(argc, argv, genpkey_options);
    while ((o = FUNC28()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            FUNC2(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            ret = 0;
            FUNC26(genpkey_options);
            goto end;
        case OPT_OUTFORM:
            if (!FUNC25(FUNC23(), OPT_FMT_PEMDER, &outformat))
                goto opthelp;
            break;
        case OPT_OUT:
            outfile = FUNC23();
            break;
        case OPT_PASS:
            passarg = FUNC23();
            break;
        case OPT_ENGINE:
            e = FUNC33(FUNC23(), 0);
            break;
        case OPT_PARAMFILE:
            if (do_param == 1)
                goto opthelp;
            if (!FUNC22(&ctx, FUNC23(), e))
                goto end;
            break;
        case OPT_ALGORITHM:
            if (!FUNC21(&ctx, FUNC23(), e, do_param))
                goto end;
            break;
        case OPT_PKEYOPT:
            if (ctx == NULL) {
                FUNC2(bio_err, "%s: No keytype specified.\n", prog);
                goto opthelp;
            }
            if (FUNC31(ctx, FUNC23()) <= 0) {
                FUNC2(bio_err,
                           "%s: Error setting %s parameter:\n",
                           prog, FUNC23());
                FUNC4(bio_err);
                goto end;
            }
            break;
        case OPT_GENPARAM:
            if (ctx != NULL)
                goto opthelp;
            do_param = 1;
            break;
        case OPT_TEXT:
            text = 1;
            break;
        case OPT_CIPHER:
            if (!FUNC24(FUNC30(), &cipher)
                || do_param == 1)
                goto opthelp;
            if (FUNC5(cipher) == EVP_CIPH_GCM_MODE ||
                FUNC5(cipher) == EVP_CIPH_CCM_MODE ||
                FUNC5(cipher) == EVP_CIPH_XTS_MODE ||
                FUNC5(cipher) == EVP_CIPH_OCB_MODE) {
                FUNC2(bio_err, "%s: cipher mode not supported\n", prog);
                goto end;
            }
        }
    }
    argc = FUNC29();
    if (argc != 0)
        goto opthelp;

    private = do_param ? 0 : 1;

    if (ctx == NULL)
        goto opthelp;

    if (!FUNC17(passarg, NULL, &pass, NULL)) {
        FUNC3(bio_err, "Error getting password\n");
        goto end;
    }

    out = FUNC19(outfile, outformat, private);
    if (out == NULL)
        goto end;

    FUNC8(ctx, genpkey_cb);
    FUNC7(ctx, bio_err);

    if (do_param) {
        if (FUNC11(ctx, &pkey) <= 0) {
            FUNC3(bio_err, "Error generating parameters\n");
            FUNC4(bio_err);
            goto end;
        }
    } else {
        if (FUNC10(ctx, &pkey) <= 0) {
            FUNC3(bio_err, "Error generating key\n");
            FUNC4(bio_err);
            goto end;
        }
    }

    if (do_param) {
        rv = FUNC15(out, pkey);
    } else if (outformat == FORMAT_PEM) {
        FUNC18(private);
        rv = FUNC16(out, pkey, cipher, NULL, 0, NULL, pass);
    } else if (outformat == FORMAT_ASN1) {
        FUNC18(private);
        rv = FUNC20(out, pkey);
    } else {
        FUNC2(bio_err, "Bad format specified for key\n");
        goto end;
    }

    if (rv <= 0) {
        FUNC3(bio_err, "Error writing key\n");
        FUNC4(bio_err);
    }

    if (text) {
        if (do_param)
            rv = FUNC12(out, pkey, 0, NULL);
        else
            rv = FUNC13(out, pkey, 0, NULL);

        if (rv <= 0) {
            FUNC3(bio_err, "Error printing key\n");
            FUNC4(bio_err);
        }
    }

    ret = 0;

 end:
    FUNC9(pkey);
    FUNC6(ctx);
    FUNC1(out);
    FUNC0(in);
    FUNC32(e);
    FUNC14(pass);
    return ret;
}