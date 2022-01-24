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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FORMAT_ASN1 ; 
 int FORMAT_PEM ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
#define  OPT_CHECK 146 
#define  OPT_ENGINE 145 
#define  OPT_EOF 144 
#define  OPT_ERR 143 
 int /*<<< orphan*/  OPT_FMT_ANY ; 
 int /*<<< orphan*/  OPT_FMT_PEMDER ; 
#define  OPT_HELP 142 
#define  OPT_IN 141 
#define  OPT_INFORM 140 
#define  OPT_MD 139 
#define  OPT_NOOUT 138 
#define  OPT_OUT 137 
#define  OPT_OUTFORM 136 
#define  OPT_PASSIN 135 
#define  OPT_PASSOUT 134 
#define  OPT_PUBIN 133 
#define  OPT_PUBOUT 132 
#define  OPT_PUB_CHECK 131 
#define  OPT_TEXT 130 
#define  OPT_TEXT_PUB 129 
#define  OPT_TRADITIONAL 128 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/ * bio_err ; 
 int /*<<< orphan*/ * FUNC20 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (char*,int,int,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC24 (char*,int,int,char*,int /*<<< orphan*/ *,char*) ; 
 char* FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 char* FUNC29 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC30 () ; 
 int FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  pkey_options ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC34 (char*,int /*<<< orphan*/ ) ; 

int FUNC35(int argc, char **argv)
{
    BIO *in = NULL, *out = NULL;
    ENGINE *e = NULL;
    EVP_PKEY *pkey = NULL;
    const EVP_CIPHER *cipher = NULL;
    char *infile = NULL, *outfile = NULL, *passin = NULL, *passout = NULL;
    char *passinarg = NULL, *passoutarg = NULL, *prog;
    OPTION_CHOICE o;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM;
    int pubin = 0, pubout = 0, pubtext = 0, text = 0, noout = 0, ret = 1;
    int private = 0, traditional = 0, check = 0, pub_check = 0;

    prog = FUNC29(argc, argv, pkey_options);
    while ((o = FUNC30()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            FUNC2(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC28(pkey_options);
            ret = 0;
            goto end;
        case OPT_INFORM:
            if (!FUNC27(FUNC25(), OPT_FMT_ANY, &informat))
                goto opthelp;
            break;
        case OPT_OUTFORM:
            if (!FUNC27(FUNC25(), OPT_FMT_PEMDER, &outformat))
                goto opthelp;
            break;
        case OPT_PASSIN:
            passinarg = FUNC25();
            break;
        case OPT_PASSOUT:
            passoutarg = FUNC25();
            break;
        case OPT_ENGINE:
            e = FUNC34(FUNC25(), 0);
            break;
        case OPT_IN:
            infile = FUNC25();
            break;
        case OPT_OUT:
            outfile = FUNC25();
            break;
        case OPT_PUBIN:
            pubin = pubout = pubtext = 1;
            break;
        case OPT_PUBOUT:
            pubout = 1;
            break;
        case OPT_TEXT_PUB:
            pubtext = text = 1;
            break;
        case OPT_TEXT:
            text = 1;
            break;
        case OPT_NOOUT:
            noout = 1;
            break;
        case OPT_TRADITIONAL:
            traditional = 1;
            break;
        case OPT_CHECK:
            check = 1;
            break;
        case OPT_PUB_CHECK:
            pub_check = 1;
            break;
        case OPT_MD:
            if (!FUNC26(FUNC32(), &cipher))
                goto opthelp;
        }
    }
    argc = FUNC31();
    if (argc != 0)
        goto opthelp;

    private = !noout && !pubout ? 1 : 0;
    if (text && !pubtext)
        private = 1;

    if (!FUNC18(passinarg, passoutarg, &passin, &passout)) {
        FUNC2(bio_err, "Error getting passwords\n");
        goto end;
    }

    out = FUNC20(outfile, outformat, private);
    if (out == NULL)
        goto end;

    if (pubin)
        pkey = FUNC24(infile, informat, 1, passin, e, "Public Key");
    else
        pkey = FUNC23(infile, informat, 1, passin, e, "key");
    if (pkey == NULL)
        goto end;

    if (check || pub_check) {
        int r;
        EVP_PKEY_CTX *ctx;

        ctx = FUNC8(pkey, e);
        if (ctx == NULL) {
            FUNC5(bio_err);
            goto end;
        }

        if (check)
            r = FUNC9(ctx);
        else
            r = FUNC13(ctx);

        if (r == 1) {
            FUNC2(out, "Key is valid\n");
        } else {
            /*
             * Note: at least for RSA keys if this function returns
             * -1, there will be no error reasons.
             */
            unsigned long err;

            FUNC2(out, "Key is invalid\n");

            while ((err = FUNC4()) != 0) {
                FUNC2(out, "Detailed error: %s\n",
                           FUNC6(err));
                FUNC3(); /* remove err from error stack */
            }
        }
        FUNC7(ctx);
    }

    if (!noout) {
        if (outformat == FORMAT_PEM) {
            if (pubout) {
                if (!FUNC15(out, pkey))
                    goto end;
            } else {
                FUNC19(private);
                if (traditional) {
                    if (!FUNC17(out, pkey, cipher,
                                                              NULL, 0, NULL,
                                                              passout))
                        goto end;
                } else {
                    if (!FUNC16(out, pkey, cipher,
                                                  NULL, 0, NULL, passout))
                        goto end;
                }
            }
        } else if (outformat == FORMAT_ASN1) {
            if (pubout) {
                if (!FUNC21(out, pkey))
                    goto end;
            } else {
                FUNC19(private);
                if (!FUNC22(out, pkey))
                    goto end;
            }
        } else {
            FUNC2(bio_err, "Bad format specified for key\n");
            goto end;
        }
    }

    if (text) {
        if (pubtext) {
            if (FUNC12(out, pkey, 0, NULL) <= 0)
                goto end;
        } else {
            FUNC19(private);
            if (FUNC11(out, pkey, 0, NULL) <= 0)
                goto end;
        }
    }

    ret = 0;

 end:
    if (ret != 0)
        FUNC5(bio_err);
    FUNC10(pkey);
    FUNC33(e);
    FUNC1(out);
    FUNC0(in);
    FUNC14(passin);
    FUNC14(passout);

    return ret;
}