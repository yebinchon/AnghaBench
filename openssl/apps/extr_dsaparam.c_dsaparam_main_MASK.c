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
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FORMAT_ASN1 ; 
 int FORMAT_PEM ; 
 int OPENSSL_DSA_MAX_MODULUS_BITS ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*) ; 
#define  OPT_C 141 
#define  OPT_ENGINE 140 
#define  OPT_EOF 139 
#define  OPT_ERR 138 
 int /*<<< orphan*/  OPT_FMT_PEMDER ; 
#define  OPT_GENKEY 137 
#define  OPT_HELP 136 
#define  OPT_IN 135 
#define  OPT_INFORM 134 
#define  OPT_NOOUT 133 
#define  OPT_OUT 132 
#define  OPT_OUTFORM 131 
#define  OPT_R_CASES 130 
#define  OPT_TEXT 129 
#define  OPT_VERBOSE 128 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC20 (int,char*) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC22 (char*,char,int) ; 
 int /*<<< orphan*/ * FUNC23 (char*,int,int) ; 
 int /*<<< orphan*/  bio_out ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dsa_cb ; 
 int /*<<< orphan*/  dsaparam_options ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 char* FUNC30 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (char*,int*) ; 
 int FUNC32 () ; 
 int FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (int) ; 
 char** FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC38 (char*,int /*<<< orphan*/ ) ; 
 int verbose ; 

int FUNC39(int argc, char **argv)
{
    ENGINE *e = NULL;
    DSA *dsa = NULL;
    BIO *in = NULL, *out = NULL;
    BN_GENCB *cb = NULL;
    int numbits = -1, num = 0, genkey = 0;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM, noout = 0, C = 0;
    int ret = 1, i, text = 0, private = 0;
    char *infile = NULL, *outfile = NULL, *prog;
    OPTION_CHOICE o;

    prog = FUNC30(argc, argv, dsaparam_options);
    while ((o = FUNC32()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            FUNC2(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC29(dsaparam_options);
            ret = 0;
            goto end;
        case OPT_INFORM:
            if (!FUNC28(FUNC27(), OPT_FMT_PEMDER, &informat))
                goto opthelp;
            break;
        case OPT_IN:
            infile = FUNC27();
            break;
        case OPT_OUTFORM:
            if (!FUNC28(FUNC27(), OPT_FMT_PEMDER, &outformat))
                goto opthelp;
            break;
        case OPT_OUT:
            outfile = FUNC27();
            break;
        case OPT_ENGINE:
            e = FUNC38(FUNC27(), 0);
            break;
        case OPT_TEXT:
            text = 1;
            break;
        case OPT_C:
            C = 1;
            break;
        case OPT_GENKEY:
            genkey = 1;
            break;
        case OPT_R_CASES:
            if (!FUNC34(o))
                goto end;
            break;
        case OPT_NOOUT:
            noout = 1;
            break;
        case OPT_VERBOSE:
            verbose = 1;
            break;
        }
    }
    argc = FUNC33();
    argv = FUNC35();

    if (argc == 1) {
        if (!FUNC31(argv[0], &num) || num < 0)
            goto end;
        /* generate a key */
        numbits = num;
    }
    private = genkey ? 1 : 0;

    in = FUNC22(infile, 'r', informat);
    if (in == NULL)
        goto end;
    out = FUNC23(outfile, outformat, private);
    if (out == NULL)
        goto end;

    if (numbits > 0) {
        if (numbits > OPENSSL_DSA_MAX_MODULUS_BITS)
            FUNC2(bio_err,
                       "Warning: It is not recommended to use more than %d bit for DSA keys.\n"
                       "         Your key size is %d! Larger key size may behave not as expected.\n",
                       OPENSSL_DSA_MAX_MODULUS_BITS, numbits);

        cb = FUNC4();
        if (cb == NULL) {
            FUNC2(bio_err, "Error allocating BN_GENCB object\n");
            goto end;
        }
        FUNC5(cb, dsa_cb, bio_err);
        dsa = FUNC12();
        if (dsa == NULL) {
            FUNC2(bio_err, "Error allocating DSA object\n");
            goto end;
        }
        if (verbose) {
            FUNC2(bio_err, "Generating DSA parameters, %d bit long prime\n",
                       num);
            FUNC2(bio_err, "This could take some time\n");
        }
        if (!FUNC10(dsa, num, NULL, 0, NULL, NULL, cb)) {
            FUNC15(bio_err);
            FUNC2(bio_err, "Error, DSA key generation failed\n");
            goto end;
        }
    } else if (informat == FORMAT_ASN1) {
        dsa = FUNC24(in, NULL);
    } else {
        dsa = FUNC17(in, NULL, NULL, NULL);
    }
    if (dsa == NULL) {
        FUNC2(bio_err, "unable to load DSA parameters\n");
        FUNC15(bio_err);
        goto end;
    }

    if (text) {
        FUNC14(out, dsa);
    }

    if (C) {
        const BIGNUM *p = NULL, *q = NULL, *g = NULL;
        unsigned char *data;
        int len, bits_p;

        FUNC11(dsa, &p, &q, &g);
        len = FUNC7(p);
        bits_p = FUNC6(p);

        data = FUNC20(len + 20, "BN space");

        FUNC2(bio_out, "static DSA *get_dsa%d(void)\n{\n", bits_p);
        FUNC36(bio_out, p, "dsap", bits_p, data);
        FUNC36(bio_out, q, "dsaq", bits_p, data);
        FUNC36(bio_out, g, "dsag", bits_p, data);
        FUNC2(bio_out, "    DSA *dsa = DSA_new();\n"
                            "    BIGNUM *p, *q, *g;\n"
                            "\n");
        FUNC2(bio_out, "    if (dsa == NULL)\n"
                            "        return NULL;\n");
        FUNC2(bio_out, "    if (!DSA_set0_pqg(dsa, p = BN_bin2bn(dsap_%d, sizeof(dsap_%d), NULL),\n",
                   bits_p, bits_p);
        FUNC2(bio_out, "                           q = BN_bin2bn(dsaq_%d, sizeof(dsaq_%d), NULL),\n",
                   bits_p, bits_p);
        FUNC2(bio_out, "                           g = BN_bin2bn(dsag_%d, sizeof(dsag_%d), NULL))) {\n",
                   bits_p, bits_p);
        FUNC2(bio_out, "        DSA_free(dsa);\n"
                            "        BN_free(p);\n"
                            "        BN_free(q);\n"
                            "        BN_free(g);\n"
                            "        return NULL;\n"
                            "    }\n"
                            "    return dsa;\n}\n");
        FUNC16(data);
    }

    if (outformat == FORMAT_ASN1 && genkey)
        noout = 1;

    if (!noout) {
        if (outformat == FORMAT_ASN1)
            i = FUNC26(out, dsa);
        else
            i = FUNC19(out, dsa);
        if (!i) {
            FUNC2(bio_err, "unable to write DSA parameters\n");
            FUNC15(bio_err);
            goto end;
        }
    }
    if (genkey) {
        DSA *dsakey;

        if ((dsakey = FUNC13(dsa)) == NULL)
            goto end;
        if (!FUNC9(dsakey)) {
            FUNC15(bio_err);
            FUNC8(dsakey);
            goto end;
        }
        FUNC21(private);
        if (outformat == FORMAT_ASN1)
            i = FUNC25(out, dsakey);
        else
            i = FUNC18(out, dsakey, NULL, NULL, 0, NULL,
                                            NULL);
        FUNC8(dsakey);
    }
    ret = 0;
 end:
    FUNC3(cb);
    FUNC0(in);
    FUNC1(out);
    FUNC8(dsa);
    FUNC37(e);
    return ret;
}