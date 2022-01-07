
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE_CTX ;
typedef int X509_STORE ;
typedef int X509_OBJECT ;
typedef int X509_LOOKUP ;
typedef int X509_CRL ;
typedef int OPTION_CHOICE ;
typedef int EVP_PKEY ;
typedef int EVP_MD ;
typedef int BIO ;
typedef int ASN1_INTEGER ;
typedef int ASN1_BIT_STRING ;


 int ASN1_INTEGER_free (int *) ;
 int ASN1_TIME_print (int ,scalar_t__) ;
 int BIO_free_all (int *) ;
 int BIO_printf (int ,char*,...) ;
 int BIO_puts (int ,char*) ;
 int ERR_print_errors (int ) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_type (int const*) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_sha1 () ;
 int FORMAT_ASN1 ;
 int FORMAT_PEM ;
 int NID_crl_number ;
 int OBJ_nid2sn (int ) ;
 int OPT_FMT_PEMDER ;
 int PEM_write_bio_X509_CRL (int *,int *) ;
 int * X509_CRL_diff (int *,int *,int *,int const*,int ) ;
 int X509_CRL_digest (int *,int const*,unsigned char*,unsigned int*) ;
 int X509_CRL_free (int *) ;
 scalar_t__ X509_CRL_get0_lastUpdate (int *) ;
 scalar_t__ X509_CRL_get0_nextUpdate (int *) ;
 int X509_CRL_get0_signature (int *,int const**,int *) ;
 int * X509_CRL_get_ext_d2i (int *,int ,int *,int *) ;
 int X509_CRL_get_issuer (int *) ;
 int X509_CRL_print_ex (int *,int *,int ) ;
 int X509_CRL_verify (int *,int *) ;
 int X509_LOOKUP_file () ;
 int X509_LU_X509 ;
 int X509_NAME_hash (int ) ;
 int X509_NAME_hash_old (int ) ;
 int X509_OBJECT_free (int *) ;
 int X509_OBJECT_get0_X509 (int *) ;
 int X509_STORE_CTX_free (int *) ;
 int * X509_STORE_CTX_get_obj_by_subject (int *,int ,int ) ;
 int X509_STORE_CTX_init (int *,int *,int *,int *) ;
 int * X509_STORE_CTX_new () ;
 int * X509_STORE_add_lookup (int *,int ) ;
 int X509_STORE_free (int *) ;
 int * X509_get_pubkey (int ) ;
 int bio_err ;
 int * bio_open_default (char*,char,int) ;
 int bio_out ;
 int corrupt_signature (int const*) ;
 int crl_options ;
 int get_nameopt () ;
 int i2a_ASN1_INTEGER (int ,int *) ;
 scalar_t__ i2d_X509_CRL_bio (int *,int *) ;
 int * load_crl (char*,int) ;
 int * load_key (char*,int,int ,int *,int *,char*) ;
 void* opt_arg () ;
 int opt_format (void*,int ,int*) ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_md (int ,int const**) ;
 int opt_next () ;
 int opt_num_rest () ;
 int opt_unknown () ;
 int print_name (int ,char*,int ,int ) ;
 int set_nameopt (void*) ;
 int * setup_verify (char const*,int,char const*,int,char const*,int) ;

int crl_main(int argc, char **argv)
{
    X509_CRL *x = ((void*)0);
    BIO *out = ((void*)0);
    X509_STORE *store = ((void*)0);
    X509_STORE_CTX *ctx = ((void*)0);
    X509_LOOKUP *lookup = ((void*)0);
    X509_OBJECT *xobj = ((void*)0);
    EVP_PKEY *pkey;
    const EVP_MD *digest = EVP_sha1();
    char *infile = ((void*)0), *outfile = ((void*)0), *crldiff = ((void*)0), *keyfile = ((void*)0);
    const char *CAfile = ((void*)0), *CApath = ((void*)0), *CAstore = ((void*)0), *prog;
    OPTION_CHOICE o;
    int hash = 0, issuer = 0, lastupdate = 0, nextupdate = 0, noout = 0;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM, keyformat = FORMAT_PEM;
    int ret = 1, num = 0, badsig = 0, fingerprint = 0, crlnumber = 0;
    int text = 0, do_ver = 0, noCAfile = 0, noCApath = 0, noCAstore = 0;
    int i;

    int hash_old = 0;


    prog = opt_init(argc, argv, crl_options);
    while ((o = opt_next()) != 151) {
        switch (o) {
        case 151:
        case 150:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 145:
            opt_help(crl_options);
            ret = 0;
            goto end;
        case 143:
            if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &informat))
                goto opthelp;
            break;
        case 144:
            infile = opt_arg();
            break;
        case 130:
            if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &outformat))
                goto opthelp;
            break;
        case 131:
            outfile = opt_arg();
            break;
        case 140:
            if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &keyformat))
                goto opthelp;
            break;
        case 141:
            keyfile = opt_arg();
            break;
        case 148:
            crldiff = opt_arg();
            break;
        case 154:
            CApath = opt_arg();
            do_ver = 1;
            break;
        case 155:
            CAfile = opt_arg();
            do_ver = 1;
            break;
        case 153:
            CAstore = opt_arg();
            do_ver = 1;
            break;
        case 134:
            noCApath = 1;
            break;
        case 135:
            noCAfile = 1;
            break;
        case 133:
            noCAstore = 1;
            break;
        case 146:

            hash_old = ++num;

            break;
        case 128:
            do_ver = 1;
            break;
        case 129:
            text = 1;
            break;
        case 147:
            hash = ++num;
            break;
        case 142:
            issuer = ++num;
            break;
        case 139:
            lastupdate = ++num;
            break;
        case 136:
            nextupdate = ++num;
            break;
        case 132:
            noout = ++num;
            break;
        case 149:
            fingerprint = ++num;
            break;
        case 152:
            crlnumber = ++num;
            break;
        case 156:
            badsig = 1;
            break;
        case 137:
            if (!set_nameopt(opt_arg()))
                goto opthelp;
            break;
        case 138:
            if (!opt_md(opt_unknown(), &digest))
                goto opthelp;
        }
    }
    argc = opt_num_rest();
    if (argc != 0)
        goto opthelp;

    x = load_crl(infile, informat);
    if (x == ((void*)0))
        goto end;

    if (do_ver) {
        if ((store = setup_verify(CAfile, noCAfile, CApath, noCApath,
                                  CAstore, noCAstore)) == ((void*)0))
            goto end;
        lookup = X509_STORE_add_lookup(store, X509_LOOKUP_file());
        if (lookup == ((void*)0))
            goto end;
        ctx = X509_STORE_CTX_new();
        if (ctx == ((void*)0) || !X509_STORE_CTX_init(ctx, store, ((void*)0), ((void*)0))) {
            BIO_printf(bio_err, "Error initialising X509 store\n");
            goto end;
        }

        xobj = X509_STORE_CTX_get_obj_by_subject(ctx, X509_LU_X509,
                                                 X509_CRL_get_issuer(x));
        if (xobj == ((void*)0)) {
            BIO_printf(bio_err, "Error getting CRL issuer certificate\n");
            goto end;
        }
        pkey = X509_get_pubkey(X509_OBJECT_get0_X509(xobj));
        X509_OBJECT_free(xobj);
        if (pkey == ((void*)0)) {
            BIO_printf(bio_err, "Error getting CRL issuer public key\n");
            goto end;
        }
        i = X509_CRL_verify(x, pkey);
        EVP_PKEY_free(pkey);
        if (i < 0)
            goto end;
        if (i == 0)
            BIO_printf(bio_err, "verify failure\n");
        else
            BIO_printf(bio_err, "verify OK\n");
    }

    if (crldiff) {
        X509_CRL *newcrl, *delta;
        if (!keyfile) {
            BIO_puts(bio_err, "Missing CRL signing key\n");
            goto end;
        }
        newcrl = load_crl(crldiff, informat);
        if (!newcrl)
            goto end;
        pkey = load_key(keyfile, keyformat, 0, ((void*)0), ((void*)0), "CRL signing key");
        if (pkey == ((void*)0)) {
            X509_CRL_free(newcrl);
            goto end;
        }
        delta = X509_CRL_diff(x, newcrl, pkey, digest, 0);
        X509_CRL_free(newcrl);
        EVP_PKEY_free(pkey);
        if (delta) {
            X509_CRL_free(x);
            x = delta;
        } else {
            BIO_puts(bio_err, "Error creating delta CRL\n");
            goto end;
        }
    }

    if (badsig) {
        const ASN1_BIT_STRING *sig;

        X509_CRL_get0_signature(x, &sig, ((void*)0));
        corrupt_signature(sig);
    }

    if (num) {
        for (i = 1; i <= num; i++) {
            if (issuer == i) {
                print_name(bio_out, "issuer=", X509_CRL_get_issuer(x),
                           get_nameopt());
            }
            if (crlnumber == i) {
                ASN1_INTEGER *crlnum;
                crlnum = X509_CRL_get_ext_d2i(x, NID_crl_number, ((void*)0), ((void*)0));
                BIO_printf(bio_out, "crlNumber=");
                if (crlnum) {
                    i2a_ASN1_INTEGER(bio_out, crlnum);
                    ASN1_INTEGER_free(crlnum);
                } else
                    BIO_puts(bio_out, "<NONE>");
                BIO_printf(bio_out, "\n");
            }
            if (hash == i) {
                BIO_printf(bio_out, "%08lx\n",
                           X509_NAME_hash(X509_CRL_get_issuer(x)));
            }

            if (hash_old == i) {
                BIO_printf(bio_out, "%08lx\n",
                           X509_NAME_hash_old(X509_CRL_get_issuer(x)));
            }

            if (lastupdate == i) {
                BIO_printf(bio_out, "lastUpdate=");
                ASN1_TIME_print(bio_out, X509_CRL_get0_lastUpdate(x));
                BIO_printf(bio_out, "\n");
            }
            if (nextupdate == i) {
                BIO_printf(bio_out, "nextUpdate=");
                if (X509_CRL_get0_nextUpdate(x))
                    ASN1_TIME_print(bio_out, X509_CRL_get0_nextUpdate(x));
                else
                    BIO_printf(bio_out, "NONE");
                BIO_printf(bio_out, "\n");
            }
            if (fingerprint == i) {
                int j;
                unsigned int n;
                unsigned char md[EVP_MAX_MD_SIZE];

                if (!X509_CRL_digest(x, digest, md, &n)) {
                    BIO_printf(bio_err, "out of memory\n");
                    goto end;
                }
                BIO_printf(bio_out, "%s Fingerprint=",
                           OBJ_nid2sn(EVP_MD_type(digest)));
                for (j = 0; j < (int)n; j++) {
                    BIO_printf(bio_out, "%02X%c", md[j], (j + 1 == (int)n)
                               ? '\n' : ':');
                }
            }
        }
    }
    out = bio_open_default(outfile, 'w', outformat);
    if (out == ((void*)0))
        goto end;

    if (text)
        X509_CRL_print_ex(out, x, get_nameopt());

    if (noout) {
        ret = 0;
        goto end;
    }

    if (outformat == FORMAT_ASN1)
        i = (int)i2d_X509_CRL_bio(out, x);
    else
        i = PEM_write_bio_X509_CRL(out, x);
    if (!i) {
        BIO_printf(bio_err, "unable to write CRL\n");
        goto end;
    }
    ret = 0;

 end:
    if (ret != 0)
        ERR_print_errors(bio_err);
    BIO_free_all(out);
    X509_CRL_free(x);
    X509_STORE_CTX_free(ctx);
    X509_STORE_free(store);
    return ret;
}
