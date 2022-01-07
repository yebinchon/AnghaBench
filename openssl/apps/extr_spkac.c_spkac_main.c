
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* spkac; } ;
struct TYPE_12__ {int challenge; } ;
typedef int OPTION_CHOICE ;
typedef TYPE_2__ NETSCAPE_SPKI ;
typedef int EVP_PKEY ;
typedef int ENGINE ;
typedef int CONF ;
typedef int BIO ;


 int ASN1_STRING_set (int ,char*,int) ;
 int BIO_free_all (int *) ;
 int BIO_printf (int ,char*,...) ;
 int ERR_print_errors (int ) ;
 int EVP_PKEY_free (int *) ;
 int EVP_md5 () ;
 int FORMAT_PEM ;
 int FORMAT_TEXT ;
 int NCONF_free (int *) ;
 char* NCONF_get_string (int *,char const*,char const*) ;
 TYPE_2__* NETSCAPE_SPKI_b64_decode (char*,int) ;
 char* NETSCAPE_SPKI_b64_encode (TYPE_2__*) ;
 int NETSCAPE_SPKI_free (TYPE_2__*) ;
 int * NETSCAPE_SPKI_get_pubkey (TYPE_2__*) ;
 TYPE_2__* NETSCAPE_SPKI_new () ;
 int NETSCAPE_SPKI_print (int *,TYPE_2__*) ;
 int NETSCAPE_SPKI_set_pubkey (TYPE_2__*,int *) ;
 int NETSCAPE_SPKI_sign (TYPE_2__*,int *,int ) ;
 int NETSCAPE_SPKI_verify (TYPE_2__*,int *) ;
 int OPENSSL_free (char*) ;




 int OPT_FMT_ANY ;
 int PEM_write_bio_PUBKEY (int *,int *) ;
 int * app_load_config (char*) ;
 int app_passwd (char*,int *,char**,int *) ;
 int bio_err ;
 int * bio_open_default (char*,char,int ) ;
 int * load_key (char*,int,int,char*,int *,char*) ;
 void* opt_arg () ;
 int opt_format (void*,int ,int*) ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 int opt_num_rest () ;
 int release_engine (int *) ;
 int * setup_engine (void*,int ) ;
 int spkac_options ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

int spkac_main(int argc, char **argv)
{
    BIO *out = ((void*)0);
    CONF *conf = ((void*)0);
    ENGINE *e = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    NETSCAPE_SPKI *spki = ((void*)0);
    char *challenge = ((void*)0), *keyfile = ((void*)0);
    char *infile = ((void*)0), *outfile = ((void*)0), *passinarg = ((void*)0), *passin = ((void*)0);
    char *spkstr = ((void*)0), *prog;
    const char *spkac = "SPKAC", *spksect = "default";
    int i, ret = 1, verify = 0, noout = 0, pubkey = 0;
    int keyformat = FORMAT_PEM;
    OPTION_CHOICE o;

    prog = opt_init(argc, argv, spkac_options);
    while ((o = opt_next()) != 140) {
        switch (o) {
        case 140:
        case 139:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 138:
            opt_help(spkac_options);
            ret = 0;
            goto end;
        case 137:
            infile = opt_arg();
            break;
        case 133:
            outfile = opt_arg();
            break;
        case 134:
            noout = 1;
            break;
        case 131:
            pubkey = 1;
            break;
        case 128:
            verify = 1;
            break;
        case 132:
            passinarg = opt_arg();
            break;
        case 136:
            keyfile = opt_arg();
            break;
        case 135:
            if (!opt_format(opt_arg(), OPT_FMT_ANY, &keyformat))
                goto opthelp;
            break;
        case 142:
            challenge = opt_arg();
            break;
        case 130:
            spkac = opt_arg();
            break;
        case 129:
            spksect = opt_arg();
            break;
        case 141:
            e = setup_engine(opt_arg(), 0);
            break;
        }
    }
    argc = opt_num_rest();
    if (argc != 0)
        goto opthelp;

    if (!app_passwd(passinarg, ((void*)0), &passin, ((void*)0))) {
        BIO_printf(bio_err, "Error getting password\n");
        goto end;
    }

    if (keyfile != ((void*)0)) {
        pkey = load_key(strcmp(keyfile, "-") ? keyfile : ((void*)0),
                        keyformat, 1, passin, e, "private key");
        if (pkey == ((void*)0))
            goto end;
        spki = NETSCAPE_SPKI_new();
        if (spki == ((void*)0))
            goto end;
        if (challenge != ((void*)0))
            ASN1_STRING_set(spki->spkac->challenge,
                            challenge, (int)strlen(challenge));
        NETSCAPE_SPKI_set_pubkey(spki, pkey);
        NETSCAPE_SPKI_sign(spki, pkey, EVP_md5());
        spkstr = NETSCAPE_SPKI_b64_encode(spki);
        if (spkstr == ((void*)0))
            goto end;

        out = bio_open_default(outfile, 'w', FORMAT_TEXT);
        if (out == ((void*)0)) {
            OPENSSL_free(spkstr);
            goto end;
        }
        BIO_printf(out, "SPKAC=%s\n", spkstr);
        OPENSSL_free(spkstr);
        ret = 0;
        goto end;
    }

    if ((conf = app_load_config(infile)) == ((void*)0))
        goto end;

    spkstr = NCONF_get_string(conf, spksect, spkac);

    if (spkstr == ((void*)0)) {
        BIO_printf(bio_err, "Can't find SPKAC called \"%s\"\n", spkac);
        ERR_print_errors(bio_err);
        goto end;
    }

    spki = NETSCAPE_SPKI_b64_decode(spkstr, -1);

    if (spki == ((void*)0)) {
        BIO_printf(bio_err, "Error loading SPKAC\n");
        ERR_print_errors(bio_err);
        goto end;
    }

    out = bio_open_default(outfile, 'w', FORMAT_TEXT);
    if (out == ((void*)0))
        goto end;

    if (!noout)
        NETSCAPE_SPKI_print(out, spki);
    pkey = NETSCAPE_SPKI_get_pubkey(spki);
    if (verify) {
        i = NETSCAPE_SPKI_verify(spki, pkey);
        if (i > 0) {
            BIO_printf(bio_err, "Signature OK\n");
        } else {
            BIO_printf(bio_err, "Signature Failure\n");
            ERR_print_errors(bio_err);
            goto end;
        }
    }
    if (pubkey)
        PEM_write_bio_PUBKEY(out, pkey);

    ret = 0;

 end:
    NCONF_free(conf);
    NETSCAPE_SPKI_free(spki);
    BIO_free_all(out);
    EVP_PKEY_free(pkey);
    release_engine(e);
    OPENSSL_free(passin);
    return ret;
}
