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
typedef  int point_conversion_form_t ;
typedef  int OPTION_CHOICE ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_PKEY_NO_PUBKEY ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int FORMAT_ASN1 ; 
 int FORMAT_ENGINE ; 
 int FORMAT_PEM ; 
 int OPENSSL_EC_NAMED_CURVE ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
#define  OPT_CHECK 147 
#define  OPT_CIPHER 146 
#define  OPT_CONV_FORM 145 
#define  OPT_ENGINE 144 
#define  OPT_EOF 143 
#define  OPT_ERR 142 
 int /*<<< orphan*/  OPT_FMT_ANY ; 
 int /*<<< orphan*/  OPT_FMT_PEMDER ; 
#define  OPT_HELP 141 
#define  OPT_IN 140 
#define  OPT_INFORM 139 
#define  OPT_NOOUT 138 
#define  OPT_NO_PUBLIC 137 
#define  OPT_OUT 136 
#define  OPT_OUTFORM 135 
#define  OPT_PARAM_ENC 134 
#define  OPT_PARAM_OUT 133 
#define  OPT_PASSIN 132 
#define  OPT_PASSOUT 131 
#define  OPT_PUBIN 130 
#define  OPT_PUBOUT 129 
#define  OPT_TEXT 128 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int POINT_CONVERSION_UNCOMPRESSED ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC21 (char*,char,int) ; 
 int /*<<< orphan*/ * FUNC22 (char*,int,int) ; 
 int /*<<< orphan*/  conv_forms ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ec_options ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC28 (char*,int,int,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC29 (char*,int,int,char*,int /*<<< orphan*/ *,char*) ; 
 char* FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC32 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 char* FUNC34 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC35 () ; 
 int FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int /*<<< orphan*/  param_enc ; 
 int /*<<< orphan*/  FUNC39 (char*) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC41 (char*,int /*<<< orphan*/ ) ; 

int FUNC42(int argc, char **argv)
{
    BIO *in = NULL, *out = NULL;
    ENGINE *e = NULL;
    EC_KEY *eckey = NULL;
    const EC_GROUP *group;
    const EVP_CIPHER *enc = NULL;
    point_conversion_form_t form = POINT_CONVERSION_UNCOMPRESSED;
    char *infile = NULL, *outfile = NULL, *prog;
    char *passin = NULL, *passout = NULL, *passinarg = NULL, *passoutarg = NULL;
    OPTION_CHOICE o;
    int asn1_flag = OPENSSL_EC_NAMED_CURVE, new_form = 0, new_asn1_flag = 0;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM, text = 0, noout = 0;
    int pubin = 0, pubout = 0, param_out = 0, i, ret = 1, private = 0;
    int no_public = 0, check = 0;

    prog = FUNC34(argc, argv, ec_options);
    while ((o = FUNC35()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            FUNC2(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC33(ec_options);
            ret = 0;
            goto end;
        case OPT_INFORM:
            if (!FUNC32(FUNC30(), OPT_FMT_ANY, &informat))
                goto opthelp;
            break;
        case OPT_IN:
            infile = FUNC30();
            break;
        case OPT_OUTFORM:
            if (!FUNC32(FUNC30(), OPT_FMT_PEMDER, &outformat))
                goto opthelp;
            break;
        case OPT_OUT:
            outfile = FUNC30();
            break;
        case OPT_NOOUT:
            noout = 1;
            break;
        case OPT_TEXT:
            text = 1;
            break;
        case OPT_PARAM_OUT:
            param_out = 1;
            break;
        case OPT_PUBIN:
            pubin = 1;
            break;
        case OPT_PUBOUT:
            pubout = 1;
            break;
        case OPT_PASSIN:
            passinarg = FUNC30();
            break;
        case OPT_PASSOUT:
            passoutarg = FUNC30();
            break;
        case OPT_ENGINE:
            e = FUNC41(FUNC30(), 0);
            break;
        case OPT_CIPHER:
            if (!FUNC31(FUNC38(), &enc))
                goto opthelp;
            break;
        case OPT_CONV_FORM:
            if (!FUNC37(FUNC30(), conv_forms, &i))
                goto opthelp;
            new_form = 1;
            form = i;
            break;
        case OPT_PARAM_ENC:
            if (!FUNC37(FUNC30(), param_enc, &i))
                goto opthelp;
            new_asn1_flag = 1;
            asn1_flag = i;
            break;
        case OPT_NO_PUBLIC:
            no_public = 1;
            break;
        case OPT_CHECK:
            check = 1;
            break;
        }
    }
    argc = FUNC36();
    if (argc != 0)
        goto opthelp;

    private = param_out || pubin || pubout ? 0 : 1;
    if (text && !pubin)
        private = 1;

    if (!FUNC19(passinarg, passoutarg, &passin, &passout)) {
        FUNC2(bio_err, "Error getting passwords\n");
        goto end;
    }

    if (informat != FORMAT_ENGINE) {
        in = FUNC21(infile, 'r', informat);
        if (in == NULL)
            goto end;
    }

    FUNC2(bio_err, "read EC key\n");
    if (informat == FORMAT_ASN1) {
        if (pubin)
            eckey = FUNC24(in, NULL);
        else
            eckey = FUNC23(in, NULL);
    } else if (informat == FORMAT_ENGINE) {
        EVP_PKEY *pkey;
        if (pubin)
            pkey = FUNC29(infile, informat, 1, passin, e, "Public Key");
        else
            pkey = FUNC28(infile, informat, 1, passin, e, "Private Key");
        if (pkey != NULL) {
            eckey = FUNC12(pkey);
            FUNC11(pkey);
        }
    } else {
        if (pubin)
            eckey = FUNC15(in, NULL, NULL, NULL);
        else
            eckey = FUNC14(in, NULL, NULL, passin);
    }
    if (eckey == NULL) {
        FUNC2(bio_err, "unable to load Key\n");
        FUNC10(bio_err);
        goto end;
    }

    out = FUNC22(outfile, outformat, private);
    if (out == NULL)
        goto end;

    group = FUNC5(eckey);

    if (new_form)
        FUNC8(eckey, form);

    if (new_asn1_flag)
        FUNC7(eckey, asn1_flag);

    if (no_public)
        FUNC9(eckey, EC_PKEY_NO_PUBKEY);

    if (text) {
        FUNC20(pubin || private);
        if (!FUNC6(out, eckey, 0)) {
            FUNC39(outfile);
            FUNC10(bio_err);
            goto end;
        }
    }

    if (check) {
        if (FUNC3(eckey) == 1) {
            FUNC2(bio_err, "EC Key valid.\n");
        } else {
            FUNC2(bio_err, "EC Key Invalid!\n");
            FUNC10(bio_err);
        }
    }

    if (noout) {
        ret = 0;
        goto end;
    }

    FUNC2(bio_err, "writing EC key\n");
    if (outformat == FORMAT_ASN1) {
        if (param_out) {
            i = FUNC25(out, group);
        } else if (pubin || pubout) {
            i = FUNC27(out, eckey);
        } else {
            FUNC20(private);
            i = FUNC26(out, eckey);
        }
    } else {
        if (param_out) {
            i = FUNC16(out, group);
        } else if (pubin || pubout) {
            i = FUNC18(out, eckey);
        } else {
            FUNC20(private);
            i = FUNC17(out, eckey, enc,
                                           NULL, 0, NULL, passout);
        }
    }

    if (!i) {
        FUNC2(bio_err, "unable to write private key\n");
        FUNC10(bio_err);
    } else {
        ret = 0;
    }
 end:
    FUNC0(in);
    FUNC1(out);
    FUNC4(eckey);
    FUNC40(e);
    FUNC13(passin);
    FUNC13(passout);
    return ret;
}