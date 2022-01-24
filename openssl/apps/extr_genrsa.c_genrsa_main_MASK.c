#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pem_password_cb ;
struct TYPE_3__ {char* password; char* prompt_info; } ;
typedef  int /*<<< orphan*/  RSA ;
typedef  TYPE_1__ PW_CB_DATA ;
typedef  int OPTION_CHOICE ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/  const*) ; 
 char* FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int DEFBITS ; 
 int DEFPRIMES ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORMAT_PEM ; 
 int OPENSSL_RSA_MAX_MODULUS_BITS ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
#define  OPT_3 139 
#define  OPT_CIPHER 138 
#define  OPT_ENGINE 137 
#define  OPT_EOF 136 
#define  OPT_ERR 135 
#define  OPT_F4 134 
#define  OPT_HELP 133 
#define  OPT_OUT 132 
#define  OPT_PASSOUT 131 
#define  OPT_PRIMES 130 
#define  OPT_R_CASES 129 
#define  OPT_VERBOSE 128 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 unsigned long RSA_F4 ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC20 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  genrsa_cb ; 
 int /*<<< orphan*/  genrsa_options ; 
 char* FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 char* FUNC24 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,int*) ; 
 int FUNC26 () ; 
 int FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 char** FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 scalar_t__ password_callback ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC32 (char*,int /*<<< orphan*/ ) ; 
 int verbose ; 

int FUNC33(int argc, char **argv)
{
    BN_GENCB *cb = FUNC3();
    PW_CB_DATA cb_data;
    ENGINE *eng = NULL;
    BIGNUM *bn = FUNC8();
    BIO *out = NULL;
    const BIGNUM *e;
    RSA *rsa = NULL;
    const EVP_CIPHER *enc = NULL;
    int ret = 1, num = DEFBITS, private = 0, primes = DEFPRIMES;
    unsigned long f4 = RSA_F4;
    char *outfile = NULL, *passoutarg = NULL, *passout = NULL;
    char *prog, *hexe, *dece;
    OPTION_CHOICE o;

    if (bn == NULL || cb == NULL)
        goto end;

    FUNC4(cb, genrsa_cb, bio_err);

    prog = FUNC24(argc, argv, genrsa_options);
    while ((o = FUNC26()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
opthelp:
            FUNC1(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            ret = 0;
            FUNC23(genrsa_options);
            goto end;
        case OPT_3:
            f4 = 3;
            break;
        case OPT_F4:
            f4 = RSA_F4;
            break;
        case OPT_OUT:
            outfile = FUNC21();
            break;
        case OPT_ENGINE:
            eng = FUNC32(FUNC21(), 0);
            break;
        case OPT_R_CASES:
            if (!FUNC28(o))
                goto end;
            break;
        case OPT_PASSOUT:
            passoutarg = FUNC21();
            break;
        case OPT_CIPHER:
            if (!FUNC22(FUNC30(), &enc))
                goto end;
            break;
        case OPT_PRIMES:
            if (!FUNC25(FUNC21(), &primes))
                goto end;
            break;
        case OPT_VERBOSE:
            verbose = 1;
            break;
        }
    }
    argc = FUNC27();
    argv = FUNC29();

    if (argc == 1) {
        if (!FUNC25(argv[0], &num) || num <= 0)
            goto end;
        if (num > OPENSSL_RSA_MAX_MODULUS_BITS)
            FUNC1(bio_err,
                       "Warning: It is not recommended to use more than %d bit for RSA keys.\n"
                       "         Your key size is %d! Larger key size may behave not as expected.\n",
                       OPENSSL_RSA_MAX_MODULUS_BITS, num);
    } else if (argc > 0) {
        FUNC1(bio_err, "Extra arguments given.\n");
        goto opthelp;
    }

    private = 1;
    if (!FUNC18(NULL, passoutarg, NULL, &passout)) {
        FUNC1(bio_err, "Error getting password\n");
        goto end;
    }

    out = FUNC20(outfile, FORMAT_PEM, private);
    if (out == NULL)
        goto end;

    if (verbose)
        FUNC1(bio_err, "Generating RSA private key, %d bit long modulus (%d primes)\n",
                   num, primes);
    rsa = eng ? FUNC17(eng) : FUNC16();
    if (rsa == NULL)
        goto end;

    if (!FUNC9(bn, f4)
        || !FUNC14(rsa, num, primes, bn, cb))
        goto end;

    FUNC15(rsa, NULL, &e, NULL);
    hexe = FUNC6(e);
    dece = FUNC5(e);
    if (hexe && dece && verbose) {
        FUNC1(bio_err, "e is %s (0x%s)\n", dece, hexe);
    }
    FUNC11(hexe);
    FUNC11(dece);
    cb_data.password = passout;
    cb_data.prompt_info = outfile;
    FUNC19(private);
    if (!FUNC12(out, rsa, enc, NULL, 0,
                                     (pem_password_cb *)password_callback,
                                     &cb_data))
        goto end;

    ret = 0;
 end:
    FUNC7(bn);
    FUNC2(cb);
    FUNC13(rsa);
    FUNC0(out);
    FUNC31(eng);
    FUNC11(passout);
    if (ret != 0)
        FUNC10(bio_err);
    return ret;
}