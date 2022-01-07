
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
 int BIO_printf (int ,char*,...) ;
 int BIO_puts (int ,char*) ;
 int ERR_print_errors (int ) ;
 int EVP_CIPHER_mode (int const*) ;
 int EVP_CIPH_CCM_MODE ;
 int EVP_CIPH_GCM_MODE ;
 int EVP_CIPH_OCB_MODE ;
 int EVP_CIPH_XTS_MODE ;
 int EVP_PKEY_CTX_free (int *) ;
 int EVP_PKEY_CTX_set_app_data (int *,int ) ;
 int EVP_PKEY_CTX_set_cb (int *,int ) ;
 int EVP_PKEY_free (int *) ;
 scalar_t__ EVP_PKEY_keygen (int *,int **) ;
 scalar_t__ EVP_PKEY_paramgen (int *,int **) ;
 int EVP_PKEY_print_params (int *,int *,int ,int *) ;
 int EVP_PKEY_print_private (int *,int *,int ,int *) ;
 int FORMAT_ASN1 ;
 int FORMAT_PEM ;
 int OPENSSL_free (char*) ;





 int OPT_FMT_PEMDER ;
 int PEM_write_bio_Parameters (int *,int *) ;
 int PEM_write_bio_PrivateKey (int *,int *,int const*,int *,int ,int *,char*) ;
 int app_passwd (char*,int *,char**,int *) ;
 int assert (int) ;
 int bio_err ;
 int * bio_open_owner (char*,int,int) ;
 int genpkey_cb ;
 int genpkey_options ;
 int i2d_PrivateKey_bio (int *,int *) ;
 int init_gen_str (int **,char*,int *,int) ;
 int init_keygen_file (int **,char*,int *) ;
 char* opt_arg () ;
 int opt_cipher (int ,int const**) ;
 int opt_format (char*,int ,int*) ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 int opt_num_rest () ;
 int opt_unknown () ;
 int pkey_ctrl_string (int *,char*) ;
 int release_engine (int *) ;
 int * setup_engine (char*,int ) ;

int genpkey_main(int argc, char **argv)
{
    BIO *in = ((void*)0), *out = ((void*)0);
    ENGINE *e = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    EVP_PKEY_CTX *ctx = ((void*)0);
    char *outfile = ((void*)0), *passarg = ((void*)0), *pass = ((void*)0), *prog;
    const EVP_CIPHER *cipher = ((void*)0);
    OPTION_CHOICE o;
    int outformat = FORMAT_PEM, text = 0, ret = 1, rv, do_param = 0;
    int private = 0;

    prog = opt_init(argc, argv, genpkey_options);
    while ((o = opt_next()) != 137) {
        switch (o) {
        case 137:
        case 136:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 134:
            ret = 0;
            opt_help(genpkey_options);
            goto end;
        case 132:
            if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &outformat))
                goto opthelp;
            break;
        case 133:
            outfile = opt_arg();
            break;
        case 130:
            passarg = opt_arg();
            break;
        case 138:
            e = setup_engine(opt_arg(), 0);
            break;
        case 131:
            if (do_param == 1)
                goto opthelp;
            if (!init_keygen_file(&ctx, opt_arg(), e))
                goto end;
            break;
        case 140:
            if (!init_gen_str(&ctx, opt_arg(), e, do_param))
                goto end;
            break;
        case 129:
            if (ctx == ((void*)0)) {
                BIO_printf(bio_err, "%s: No keytype specified.\n", prog);
                goto opthelp;
            }
            if (pkey_ctrl_string(ctx, opt_arg()) <= 0) {
                BIO_printf(bio_err,
                           "%s: Error setting %s parameter:\n",
                           prog, opt_arg());
                ERR_print_errors(bio_err);
                goto end;
            }
            break;
        case 135:
            if (ctx != ((void*)0))
                goto opthelp;
            do_param = 1;
            break;
        case 128:
            text = 1;
            break;
        case 139:
            if (!opt_cipher(opt_unknown(), &cipher)
                || do_param == 1)
                goto opthelp;
            if (EVP_CIPHER_mode(cipher) == EVP_CIPH_GCM_MODE ||
                EVP_CIPHER_mode(cipher) == EVP_CIPH_CCM_MODE ||
                EVP_CIPHER_mode(cipher) == EVP_CIPH_XTS_MODE ||
                EVP_CIPHER_mode(cipher) == EVP_CIPH_OCB_MODE) {
                BIO_printf(bio_err, "%s: cipher mode not supported\n", prog);
                goto end;
            }
        }
    }
    argc = opt_num_rest();
    if (argc != 0)
        goto opthelp;

    private = do_param ? 0 : 1;

    if (ctx == ((void*)0))
        goto opthelp;

    if (!app_passwd(passarg, ((void*)0), &pass, ((void*)0))) {
        BIO_puts(bio_err, "Error getting password\n");
        goto end;
    }

    out = bio_open_owner(outfile, outformat, private);
    if (out == ((void*)0))
        goto end;

    EVP_PKEY_CTX_set_cb(ctx, genpkey_cb);
    EVP_PKEY_CTX_set_app_data(ctx, bio_err);

    if (do_param) {
        if (EVP_PKEY_paramgen(ctx, &pkey) <= 0) {
            BIO_puts(bio_err, "Error generating parameters\n");
            ERR_print_errors(bio_err);
            goto end;
        }
    } else {
        if (EVP_PKEY_keygen(ctx, &pkey) <= 0) {
            BIO_puts(bio_err, "Error generating key\n");
            ERR_print_errors(bio_err);
            goto end;
        }
    }

    if (do_param) {
        rv = PEM_write_bio_Parameters(out, pkey);
    } else if (outformat == FORMAT_PEM) {
        assert(private);
        rv = PEM_write_bio_PrivateKey(out, pkey, cipher, ((void*)0), 0, ((void*)0), pass);
    } else if (outformat == FORMAT_ASN1) {
        assert(private);
        rv = i2d_PrivateKey_bio(out, pkey);
    } else {
        BIO_printf(bio_err, "Bad format specified for key\n");
        goto end;
    }

    if (rv <= 0) {
        BIO_puts(bio_err, "Error writing key\n");
        ERR_print_errors(bio_err);
    }

    if (text) {
        if (do_param)
            rv = EVP_PKEY_print_params(out, pkey, 0, ((void*)0));
        else
            rv = EVP_PKEY_print_private(out, pkey, 0, ((void*)0));

        if (rv <= 0) {
            BIO_puts(bio_err, "Error printing key\n");
            ERR_print_errors(bio_err);
        }
    }

    ret = 0;

 end:
    EVP_PKEY_free(pkey);
    EVP_PKEY_CTX_free(ctx);
    BIO_free_all(out);
    BIO_free(in);
    release_engine(e);
    OPENSSL_free(pass);
    return ret;
}
