#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* spkac; } ;
struct TYPE_12__ {int /*<<< orphan*/  challenge; } ;
typedef  int OPTION_CHOICE ;
typedef  TYPE_2__ NETSCAPE_SPKI ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  CONF ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FORMAT_PEM ; 
 int /*<<< orphan*/  FORMAT_TEXT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char const*,char const*) ; 
 TYPE_2__* FUNC8 (char*,int) ; 
 char* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*) ; 
 TYPE_2__* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
#define  OPT_CHALLENGE 142 
#define  OPT_ENGINE 141 
#define  OPT_EOF 140 
#define  OPT_ERR 139 
 int /*<<< orphan*/  OPT_FMT_ANY ; 
#define  OPT_HELP 138 
#define  OPT_IN 137 
#define  OPT_KEY 136 
#define  OPT_KEYFORM 135 
#define  OPT_NOOUT 134 
#define  OPT_OUT 133 
#define  OPT_PASSIN 132 
#define  OPT_PUBKEY 131 
#define  OPT_SPKAC 130 
#define  OPT_SPKSECT 129 
#define  OPT_VERIFY 128 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC21 (char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (char*,int,int,char*,int /*<<< orphan*/ *,char*) ; 
 void* FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 char* FUNC26 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC27 () ; 
 int FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC30 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spkac_options ; 
 scalar_t__ FUNC31 (char*,char*) ; 
 scalar_t__ FUNC32 (char*) ; 

int FUNC33(int argc, char **argv)
{
    BIO *out = NULL;
    CONF *conf = NULL;
    ENGINE *e = NULL;
    EVP_PKEY *pkey = NULL;
    NETSCAPE_SPKI *spki = NULL;
    char *challenge = NULL, *keyfile = NULL;
    char *infile = NULL, *outfile = NULL, *passinarg = NULL, *passin = NULL;
    char *spkstr = NULL, *prog;
    const char *spkac = "SPKAC", *spksect = "default";
    int i, ret = 1, verify = 0, noout = 0, pubkey = 0;
    int keyformat = FORMAT_PEM;
    OPTION_CHOICE o;

    prog = FUNC26(argc, argv, spkac_options);
    while ((o = FUNC27()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            FUNC2(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC25(spkac_options);
            ret = 0;
            goto end;
        case OPT_IN:
            infile = FUNC23();
            break;
        case OPT_OUT:
            outfile = FUNC23();
            break;
        case OPT_NOOUT:
            noout = 1;
            break;
        case OPT_PUBKEY:
            pubkey = 1;
            break;
        case OPT_VERIFY:
            verify = 1;
            break;
        case OPT_PASSIN:
            passinarg = FUNC23();
            break;
        case OPT_KEY:
            keyfile = FUNC23();
            break;
        case OPT_KEYFORM:
            if (!FUNC24(FUNC23(), OPT_FMT_ANY, &keyformat))
                goto opthelp;
            break;
        case OPT_CHALLENGE:
            challenge = FUNC23();
            break;
        case OPT_SPKAC:
            spkac = FUNC23();
            break;
        case OPT_SPKSECT:
            spksect = FUNC23();
            break;
        case OPT_ENGINE:
            e = FUNC30(FUNC23(), 0);
            break;
        }
    }
    argc = FUNC28();
    if (argc != 0)
        goto opthelp;

    if (!FUNC20(passinarg, NULL, &passin, NULL)) {
        FUNC2(bio_err, "Error getting password\n");
        goto end;
    }

    if (keyfile != NULL) {
        pkey = FUNC22(FUNC31(keyfile, "-") ? keyfile : NULL,
                        keyformat, 1, passin, e, "private key");
        if (pkey == NULL)
            goto end;
        spki = FUNC12();
        if (spki == NULL)
            goto end;
        if (challenge != NULL)
            FUNC0(spki->spkac->challenge,
                            challenge, (int)FUNC32(challenge));
        FUNC14(spki, pkey);
        FUNC15(spki, pkey, FUNC5());
        spkstr = FUNC9(spki);
        if (spkstr == NULL)
            goto end;

        out = FUNC21(outfile, 'w', FORMAT_TEXT);
        if (out == NULL) {
            FUNC17(spkstr);
            goto end;
        }
        FUNC2(*out, "SPKAC=%s\n", spkstr);
        FUNC17(spkstr);
        ret = 0;
        goto end;
    }

    if ((conf = FUNC19(infile)) == NULL)
        goto end;

    spkstr = FUNC7(conf, spksect, spkac);

    if (spkstr == NULL) {
        FUNC2(bio_err, "Can't find SPKAC called \"%s\"\n", spkac);
        FUNC3(bio_err);
        goto end;
    }

    spki = FUNC8(spkstr, -1);

    if (spki == NULL) {
        FUNC2(bio_err, "Error loading SPKAC\n");
        FUNC3(bio_err);
        goto end;
    }

    out = FUNC21(outfile, 'w', FORMAT_TEXT);
    if (out == NULL)
        goto end;

    if (!noout)
        FUNC13(out, spki);
    pkey = FUNC11(spki);
    if (verify) {
        i = FUNC16(spki, pkey);
        if (i > 0) {
            FUNC2(bio_err, "Signature OK\n");
        } else {
            FUNC2(bio_err, "Signature Failure\n");
            FUNC3(bio_err);
            goto end;
        }
    }
    if (pubkey)
        FUNC18(out, pkey);

    ret = 0;

 end:
    FUNC6(conf);
    FUNC10(spki);
    FUNC1(out);
    FUNC4(pkey);
    FUNC29(e);
    FUNC17(passin);
    return ret;
}