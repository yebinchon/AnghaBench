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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FORMAT_ASN1 ; 
 int FORMAT_MSBLOB ; 
 int FORMAT_PEM ; 
 int FORMAT_PVK ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
#define  OPT_CIPHER 146 
#define  OPT_ENGINE 145 
#define  OPT_EOF 144 
#define  OPT_ERR 143 
 int /*<<< orphan*/  OPT_FMT_ANY ; 
#define  OPT_HELP 142 
#define  OPT_IN 141 
#define  OPT_INFORM 140 
#define  OPT_MODULUS 139 
#define  OPT_NOOUT 138 
#define  OPT_OUT 137 
#define  OPT_OUTFORM 136 
#define  OPT_PASSIN 135 
#define  OPT_PASSOUT 134 
#define  OPT_PUBIN 133 
#define  OPT_PUBOUT 132 
#define  OPT_PVK_NONE 131 
#define  OPT_PVK_STRONG 130 
#define  OPT_PVK_WEAK 129 
#define  OPT_TEXT 128 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/ * bio_err ; 
 int /*<<< orphan*/ * FUNC16 (char*,int,int) ; 
 int /*<<< orphan*/  dsa_options ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (char*,int,int,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC23 (char*,int,int,char*,int /*<<< orphan*/ *,char*) ; 
 char* FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 char* FUNC28 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC29 () ; 
 int FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC34 (char*,int /*<<< orphan*/ ) ; 

int FUNC35(int argc, char **argv)
{
    BIO *out = NULL;
    DSA *dsa = NULL;
    ENGINE *e = NULL;
    const EVP_CIPHER *enc = NULL;
    char *infile = NULL, *outfile = NULL, *prog;
    char *passin = NULL, *passout = NULL, *passinarg = NULL, *passoutarg = NULL;
    OPTION_CHOICE o;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM, text = 0, noout = 0;
    int i, modulus = 0, pubin = 0, pubout = 0, ret = 1;
# ifndef OPENSSL_NO_RC4
    int pvk_encr = 2;
# endif
    int private = 0;

    prog = FUNC28(argc, argv, dsa_options);
    while ((o = FUNC29()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            ret = 0;
            FUNC1(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC27(dsa_options);
            ret = 0;
            goto end;
        case OPT_INFORM:
            if (!FUNC26(FUNC24(), OPT_FMT_ANY, &informat))
                goto opthelp;
            break;
        case OPT_IN:
            infile = FUNC24();
            break;
        case OPT_OUTFORM:
            if (!FUNC26(FUNC24(), OPT_FMT_ANY, &outformat))
                goto opthelp;
            break;
        case OPT_OUT:
            outfile = FUNC24();
            break;
        case OPT_ENGINE:
            e = FUNC34(FUNC24(), 0);
            break;
        case OPT_PASSIN:
            passinarg = FUNC24();
            break;
        case OPT_PASSOUT:
            passoutarg = FUNC24();
            break;
        case OPT_PVK_STRONG:    /* pvk_encr:= 2 */
        case OPT_PVK_WEAK:      /* pvk_encr:= 1 */
        case OPT_PVK_NONE:      /* pvk_encr:= 0 */
#ifndef OPENSSL_NO_RC4
            pvk_encr = (o - OPT_PVK_NONE);
#endif
            break;
        case OPT_NOOUT:
            noout = 1;
            break;
        case OPT_TEXT:
            text = 1;
            break;
        case OPT_MODULUS:
            modulus = 1;
            break;
        case OPT_PUBIN:
            pubin = 1;
            break;
        case OPT_PUBOUT:
            pubout = 1;
            break;
        case OPT_CIPHER:
            if (!FUNC25(FUNC31(), &enc))
                goto end;
            break;
        }
    }
    argc = FUNC30();
    if (argc != 0)
        goto opthelp;

    private = pubin || pubout ? 0 : 1;
    if (text && !pubin)
        private = 1;

    if (!FUNC14(passinarg, passoutarg, &passin, &passout)) {
        FUNC1(bio_err, "Error getting passwords\n");
        goto end;
    }

    FUNC1(bio_err, "read DSA key\n");
    {
        EVP_PKEY *pkey;

        if (pubin)
            pkey = FUNC23(infile, informat, 1, passin, e, "Public Key");
        else
            pkey = FUNC22(infile, informat, 1, passin, e, "Private Key");

        if (pkey != NULL) {
            dsa = FUNC8(pkey);
            FUNC7(pkey);
        }
    }
    if (dsa == NULL) {
        FUNC1(bio_err, "unable to load Key\n");
        FUNC6(bio_err);
        goto end;
    }

    out = FUNC16(outfile, outformat, private);
    if (out == NULL)
        goto end;

    if (text) {
        FUNC15(pubin || private);
        if (!FUNC5(out, dsa, 0)) {
            FUNC32(outfile);
            FUNC6(bio_err);
            goto end;
        }
    }

    if (modulus) {
        const BIGNUM *pub_key = NULL;
        FUNC4(dsa, &pub_key, NULL);
        FUNC1(out, "Public Key=");
        FUNC2(out, pub_key);
        FUNC1(out, "\n");
    }

    if (noout) {
        ret = 0;
        goto end;
    }
    FUNC1(bio_err, "writing DSA key\n");
    if (outformat == FORMAT_ASN1) {
        if (pubin || pubout) {
            i = FUNC21(out, dsa);
        } else {
            FUNC15(private);
            i = FUNC20(out, dsa);
        }
    } else if (outformat == FORMAT_PEM) {
        if (pubin || pubout) {
            i = FUNC13(out, dsa);
        } else {
            FUNC15(private);
            i = FUNC12(out, dsa, enc,
                                            NULL, 0, NULL, passout);
        }
# ifndef OPENSSL_NO_RSA
    } else if (outformat == FORMAT_MSBLOB || outformat == FORMAT_PVK) {
        EVP_PKEY *pk;
        pk = FUNC9();
        if (pk == NULL)
           goto end;

        FUNC10(pk, dsa);
        if (outformat == FORMAT_PVK) {
            if (pubin) {
                FUNC1(bio_err, "PVK form impossible with public key input\n");
                FUNC7(pk);
                goto end;
            }
            FUNC15(private);
#  ifdef OPENSSL_NO_RC4
            BIO_printf(bio_err, "PVK format not supported\n");
            EVP_PKEY_free(pk);
            goto end;
#  else
            i = FUNC17(out, pk, pvk_encr, 0, passout);
#  endif
        } else if (pubin || pubout) {
            i = FUNC19(out, pk);
        } else {
            FUNC15(private);
            i = FUNC18(out, pk);
        }
        FUNC7(pk);
# endif
    } else {
        FUNC1(bio_err, "bad output format specified for outfile\n");
        goto end;
    }
    if (i <= 0) {
        FUNC1(bio_err, "unable to write private key\n");
        FUNC6(bio_err);
        goto end;
    }
    ret = 0;
 end:
    FUNC0(out);
    FUNC3(dsa);
    FUNC33(e);
    FUNC11(passin);
    FUNC11(passout);
    return ret;
}