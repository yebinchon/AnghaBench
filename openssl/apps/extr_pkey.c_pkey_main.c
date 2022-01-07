
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int EVP_CIPHER ;
typedef int ENGINE ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_free_all (int *) ;
 int BIO_printf (int *,char*,...) ;
 int ERR_get_error () ;
 unsigned long ERR_peek_error () ;
 int ERR_print_errors (int *) ;
 int ERR_reason_error_string (unsigned long) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 int EVP_PKEY_check (int *) ;
 int EVP_PKEY_free (int *) ;
 scalar_t__ EVP_PKEY_print_private (int *,int *,int ,int *) ;
 scalar_t__ EVP_PKEY_print_public (int *,int *,int ,int *) ;
 int EVP_PKEY_public_check (int *) ;
 int FORMAT_ASN1 ;
 int FORMAT_PEM ;
 int OPENSSL_free (char*) ;




 int OPT_FMT_ANY ;
 int OPT_FMT_PEMDER ;
 int PEM_write_bio_PUBKEY (int *,int *) ;
 int PEM_write_bio_PrivateKey (int *,int *,int const*,int *,int ,int *,char*) ;
 int PEM_write_bio_PrivateKey_traditional (int *,int *,int const*,int *,int ,int *,char*) ;
 int app_passwd (char*,char*,char**,char**) ;
 int assert (int) ;
 int * bio_err ;
 int * bio_open_owner (char*,int,int) ;
 int i2d_PUBKEY_bio (int *,int *) ;
 int i2d_PrivateKey_bio (int *,int *) ;
 int * load_key (char*,int,int,char*,int *,char*) ;
 int * load_pubkey (char*,int,int,char*,int *,char*) ;
 char* opt_arg () ;
 int opt_cipher (int ,int const**) ;
 int opt_format (char*,int ,int*) ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 int opt_num_rest () ;
 int opt_unknown () ;
 int pkey_options ;
 int release_engine (int *) ;
 int * setup_engine (char*,int ) ;

int pkey_main(int argc, char **argv)
{
    BIO *in = ((void*)0), *out = ((void*)0);
    ENGINE *e = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    const EVP_CIPHER *cipher = ((void*)0);
    char *infile = ((void*)0), *outfile = ((void*)0), *passin = ((void*)0), *passout = ((void*)0);
    char *passinarg = ((void*)0), *passoutarg = ((void*)0), *prog;
    OPTION_CHOICE o;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM;
    int pubin = 0, pubout = 0, pubtext = 0, text = 0, noout = 0, ret = 1;
    int private = 0, traditional = 0, check = 0, pub_check = 0;

    prog = opt_init(argc, argv, pkey_options);
    while ((o = opt_next()) != 144) {
        switch (o) {
        case 144:
        case 143:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 142:
            opt_help(pkey_options);
            ret = 0;
            goto end;
        case 140:
            if (!opt_format(opt_arg(), OPT_FMT_ANY, &informat))
                goto opthelp;
            break;
        case 136:
            if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &outformat))
                goto opthelp;
            break;
        case 135:
            passinarg = opt_arg();
            break;
        case 134:
            passoutarg = opt_arg();
            break;
        case 145:
            e = setup_engine(opt_arg(), 0);
            break;
        case 141:
            infile = opt_arg();
            break;
        case 137:
            outfile = opt_arg();
            break;
        case 133:
            pubin = pubout = pubtext = 1;
            break;
        case 132:
            pubout = 1;
            break;
        case 129:
            pubtext = text = 1;
            break;
        case 130:
            text = 1;
            break;
        case 138:
            noout = 1;
            break;
        case 128:
            traditional = 1;
            break;
        case 146:
            check = 1;
            break;
        case 131:
            pub_check = 1;
            break;
        case 139:
            if (!opt_cipher(opt_unknown(), &cipher))
                goto opthelp;
        }
    }
    argc = opt_num_rest();
    if (argc != 0)
        goto opthelp;

    private = !noout && !pubout ? 1 : 0;
    if (text && !pubtext)
        private = 1;

    if (!app_passwd(passinarg, passoutarg, &passin, &passout)) {
        BIO_printf(bio_err, "Error getting passwords\n");
        goto end;
    }

    out = bio_open_owner(outfile, outformat, private);
    if (out == ((void*)0))
        goto end;

    if (pubin)
        pkey = load_pubkey(infile, informat, 1, passin, e, "Public Key");
    else
        pkey = load_key(infile, informat, 1, passin, e, "key");
    if (pkey == ((void*)0))
        goto end;

    if (check || pub_check) {
        int r;
        EVP_PKEY_CTX *ctx;

        ctx = EVP_PKEY_CTX_new(pkey, e);
        if (ctx == ((void*)0)) {
            ERR_print_errors(bio_err);
            goto end;
        }

        if (check)
            r = EVP_PKEY_check(ctx);
        else
            r = EVP_PKEY_public_check(ctx);

        if (r == 1) {
            BIO_printf(out, "Key is valid\n");
        } else {




            unsigned long err;

            BIO_printf(out, "Key is invalid\n");

            while ((err = ERR_peek_error()) != 0) {
                BIO_printf(out, "Detailed error: %s\n",
                           ERR_reason_error_string(err));
                ERR_get_error();
            }
        }
        EVP_PKEY_CTX_free(ctx);
    }

    if (!noout) {
        if (outformat == FORMAT_PEM) {
            if (pubout) {
                if (!PEM_write_bio_PUBKEY(out, pkey))
                    goto end;
            } else {
                assert(private);
                if (traditional) {
                    if (!PEM_write_bio_PrivateKey_traditional(out, pkey, cipher,
                                                              ((void*)0), 0, ((void*)0),
                                                              passout))
                        goto end;
                } else {
                    if (!PEM_write_bio_PrivateKey(out, pkey, cipher,
                                                  ((void*)0), 0, ((void*)0), passout))
                        goto end;
                }
            }
        } else if (outformat == FORMAT_ASN1) {
            if (pubout) {
                if (!i2d_PUBKEY_bio(out, pkey))
                    goto end;
            } else {
                assert(private);
                if (!i2d_PrivateKey_bio(out, pkey))
                    goto end;
            }
        } else {
            BIO_printf(bio_err, "Bad format specified for key\n");
            goto end;
        }
    }

    if (text) {
        if (pubtext) {
            if (EVP_PKEY_print_public(out, pkey, 0, ((void*)0)) <= 0)
                goto end;
        } else {
            assert(private);
            if (EVP_PKEY_print_private(out, pkey, 0, ((void*)0)) <= 0)
                goto end;
        }
    }

    ret = 0;

 end:
    if (ret != 0)
        ERR_print_errors(bio_err);
    EVP_PKEY_free(pkey);
    release_engine(e);
    BIO_free_all(out);
    BIO_free(in);
    OPENSSL_free(passin);
    OPENSSL_free(passout);

    return ret;
}
