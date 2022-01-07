
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE ;
typedef int ENGINE ;
typedef int DSA ;
typedef int BN_GENCB ;
typedef int BIO ;
typedef int BIGNUM ;


 int BIO_free (int *) ;
 int BIO_free_all (int *) ;
 int BIO_printf (int ,char*,...) ;
 int BN_GENCB_free (int *) ;
 int * BN_GENCB_new () ;
 int BN_GENCB_set (int *,int ,int ) ;
 int BN_num_bits (int const*) ;
 int BN_num_bytes (int const*) ;
 int DSA_free (int *) ;
 int DSA_generate_key (int *) ;
 int DSA_generate_parameters_ex (int *,int,int *,int ,int *,int *,int *) ;
 int DSA_get0_pqg (int *,int const**,int const**,int const**) ;
 int * DSA_new () ;
 int * DSAparams_dup (int *) ;
 int DSAparams_print (int *,int *) ;
 int ERR_print_errors (int ) ;
 int FORMAT_ASN1 ;
 int FORMAT_PEM ;
 int OPENSSL_DSA_MAX_MODULUS_BITS ;
 int OPENSSL_free (unsigned char*) ;




 int OPT_FMT_PEMDER ;
 int * PEM_read_bio_DSAparams (int *,int *,int *,int *) ;
 int PEM_write_bio_DSAPrivateKey (int *,int *,int *,int *,int ,int *,int *) ;
 int PEM_write_bio_DSAparams (int *,int *) ;
 unsigned char* app_malloc (int,char*) ;
 int assert (int) ;
 int bio_err ;
 int * bio_open_default (char*,char,int) ;
 int * bio_open_owner (char*,int,int) ;
 int bio_out ;
 int * d2i_DSAparams_bio (int *,int *) ;
 int dsa_cb ;
 int dsaparam_options ;
 int i2d_DSAPrivateKey_bio (int *,int *) ;
 int i2d_DSAparams_bio (int *,int *) ;
 char* opt_arg () ;
 int opt_format (char*,int ,int*) ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_int (char*,int*) ;
 int opt_next () ;
 int opt_num_rest () ;
 int opt_rand (int) ;
 char** opt_rest () ;
 int print_bignum_var (int ,int const*,char*,int,unsigned char*) ;
 int release_engine (int *) ;
 int * setup_engine (char*,int ) ;
 int verbose ;

int dsaparam_main(int argc, char **argv)
{
    ENGINE *e = ((void*)0);
    DSA *dsa = ((void*)0);
    BIO *in = ((void*)0), *out = ((void*)0);
    BN_GENCB *cb = ((void*)0);
    int numbits = -1, num = 0, genkey = 0;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM, noout = 0, C = 0;
    int ret = 1, i, text = 0, private = 0;
    char *infile = ((void*)0), *outfile = ((void*)0), *prog;
    OPTION_CHOICE o;

    prog = opt_init(argc, argv, dsaparam_options);
    while ((o = opt_next()) != 139) {
        switch (o) {
        case 139:
        case 138:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 136:
            opt_help(dsaparam_options);
            ret = 0;
            goto end;
        case 134:
            if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &informat))
                goto opthelp;
            break;
        case 135:
            infile = opt_arg();
            break;
        case 131:
            if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &outformat))
                goto opthelp;
            break;
        case 132:
            outfile = opt_arg();
            break;
        case 140:
            e = setup_engine(opt_arg(), 0);
            break;
        case 129:
            text = 1;
            break;
        case 141:
            C = 1;
            break;
        case 137:
            genkey = 1;
            break;
        case 130:
            if (!opt_rand(o))
                goto end;
            break;
        case 133:
            noout = 1;
            break;
        case 128:
            verbose = 1;
            break;
        }
    }
    argc = opt_num_rest();
    argv = opt_rest();

    if (argc == 1) {
        if (!opt_int(argv[0], &num) || num < 0)
            goto end;

        numbits = num;
    }
    private = genkey ? 1 : 0;

    in = bio_open_default(infile, 'r', informat);
    if (in == ((void*)0))
        goto end;
    out = bio_open_owner(outfile, outformat, private);
    if (out == ((void*)0))
        goto end;

    if (numbits > 0) {
        if (numbits > OPENSSL_DSA_MAX_MODULUS_BITS)
            BIO_printf(bio_err,
                       "Warning: It is not recommended to use more than %d bit for DSA keys.\n"
                       "         Your key size is %d! Larger key size may behave not as expected.\n",
                       OPENSSL_DSA_MAX_MODULUS_BITS, numbits);

        cb = BN_GENCB_new();
        if (cb == ((void*)0)) {
            BIO_printf(bio_err, "Error allocating BN_GENCB object\n");
            goto end;
        }
        BN_GENCB_set(cb, dsa_cb, bio_err);
        dsa = DSA_new();
        if (dsa == ((void*)0)) {
            BIO_printf(bio_err, "Error allocating DSA object\n");
            goto end;
        }
        if (verbose) {
            BIO_printf(bio_err, "Generating DSA parameters, %d bit long prime\n",
                       num);
            BIO_printf(bio_err, "This could take some time\n");
        }
        if (!DSA_generate_parameters_ex(dsa, num, ((void*)0), 0, ((void*)0), ((void*)0), cb)) {
            ERR_print_errors(bio_err);
            BIO_printf(bio_err, "Error, DSA key generation failed\n");
            goto end;
        }
    } else if (informat == FORMAT_ASN1) {
        dsa = d2i_DSAparams_bio(in, ((void*)0));
    } else {
        dsa = PEM_read_bio_DSAparams(in, ((void*)0), ((void*)0), ((void*)0));
    }
    if (dsa == ((void*)0)) {
        BIO_printf(bio_err, "unable to load DSA parameters\n");
        ERR_print_errors(bio_err);
        goto end;
    }

    if (text) {
        DSAparams_print(out, dsa);
    }

    if (C) {
        const BIGNUM *p = ((void*)0), *q = ((void*)0), *g = ((void*)0);
        unsigned char *data;
        int len, bits_p;

        DSA_get0_pqg(dsa, &p, &q, &g);
        len = BN_num_bytes(p);
        bits_p = BN_num_bits(p);

        data = app_malloc(len + 20, "BN space");

        BIO_printf(bio_out, "static DSA *get_dsa%d(void)\n{\n", bits_p);
        print_bignum_var(bio_out, p, "dsap", bits_p, data);
        print_bignum_var(bio_out, q, "dsaq", bits_p, data);
        print_bignum_var(bio_out, g, "dsag", bits_p, data);
        BIO_printf(bio_out, "    DSA *dsa = DSA_new();\n"
                            "    BIGNUM *p, *q, *g;\n"
                            "\n");
        BIO_printf(bio_out, "    if (dsa == NULL)\n"
                            "        return NULL;\n");
        BIO_printf(bio_out, "    if (!DSA_set0_pqg(dsa, p = BN_bin2bn(dsap_%d, sizeof(dsap_%d), NULL),\n",
                   bits_p, bits_p);
        BIO_printf(bio_out, "                           q = BN_bin2bn(dsaq_%d, sizeof(dsaq_%d), NULL),\n",
                   bits_p, bits_p);
        BIO_printf(bio_out, "                           g = BN_bin2bn(dsag_%d, sizeof(dsag_%d), NULL))) {\n",
                   bits_p, bits_p);
        BIO_printf(bio_out, "        DSA_free(dsa);\n"
                            "        BN_free(p);\n"
                            "        BN_free(q);\n"
                            "        BN_free(g);\n"
                            "        return NULL;\n"
                            "    }\n"
                            "    return dsa;\n}\n");
        OPENSSL_free(data);
    }

    if (outformat == FORMAT_ASN1 && genkey)
        noout = 1;

    if (!noout) {
        if (outformat == FORMAT_ASN1)
            i = i2d_DSAparams_bio(out, dsa);
        else
            i = PEM_write_bio_DSAparams(out, dsa);
        if (!i) {
            BIO_printf(bio_err, "unable to write DSA parameters\n");
            ERR_print_errors(bio_err);
            goto end;
        }
    }
    if (genkey) {
        DSA *dsakey;

        if ((dsakey = DSAparams_dup(dsa)) == ((void*)0))
            goto end;
        if (!DSA_generate_key(dsakey)) {
            ERR_print_errors(bio_err);
            DSA_free(dsakey);
            goto end;
        }
        assert(private);
        if (outformat == FORMAT_ASN1)
            i = i2d_DSAPrivateKey_bio(out, dsakey);
        else
            i = PEM_write_bio_DSAPrivateKey(out, dsakey, ((void*)0), ((void*)0), 0, ((void*)0),
                                            ((void*)0));
        DSA_free(dsakey);
    }
    ret = 0;
 end:
    BN_GENCB_free(cb);
    BIO_free(in);
    BIO_free_all(out);
    DSA_free(dsa);
    release_engine(e);
    return ret;
}
