
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI_METHOD ;
typedef int PW_CB_DATA ;
typedef int OSSL_STORE_SEARCH ;
typedef int OSSL_STORE_INFO ;
typedef int OSSL_STORE_CTX ;
typedef int BIO ;


 int BIO_printf (int ,char*,...) ;
 int ERR_clear_error () ;
 int ERR_print_errors (int ) ;
 int EVP_PKEY_print_params (int *,int ,int ,int *) ;
 int EVP_PKEY_print_private (int *,int ,int ,int *) ;





 int OSSL_STORE_INFO_free (int *) ;
 int OSSL_STORE_INFO_get0_CERT (int *) ;
 int OSSL_STORE_INFO_get0_CRL (int *) ;
 char* OSSL_STORE_INFO_get0_NAME (int *) ;
 char* OSSL_STORE_INFO_get0_NAME_description (int *) ;
 int OSSL_STORE_INFO_get0_PARAMS (int *) ;
 int OSSL_STORE_INFO_get0_PKEY (int *) ;
 int OSSL_STORE_INFO_get_type (int *) ;
 char* OSSL_STORE_INFO_type_string (int) ;
 int OSSL_STORE_close (int *) ;
 scalar_t__ OSSL_STORE_eof (int *) ;
 scalar_t__ OSSL_STORE_error (int *) ;
 int OSSL_STORE_expect (int *,int) ;
 int OSSL_STORE_find (int *,int *) ;
 int * OSSL_STORE_load (int *) ;
 int * OSSL_STORE_open (char const*,int const*,int *,int *,int *) ;
 int OSSL_STORE_supports_search (int *,int) ;
 int PEM_write_bio_Parameters (int *,int ) ;
 int PEM_write_bio_PrivateKey (int *,int ,int *,int *,int ,int *,int *) ;
 int PEM_write_bio_X509 (int *,int ) ;
 int PEM_write_bio_X509_CRL (int *,int ) ;
 int X509_CRL_print (int *,int ) ;
 int X509_print (int *,int ) ;
 int bio_err ;
 int bio_out ;
 int indent_printf (int,int *,char*,...) ;

__attribute__((used)) static int process(const char *uri, const UI_METHOD *uimeth, PW_CB_DATA *uidata,
                   int expected, int criterion, OSSL_STORE_SEARCH *search,
                   int text, int noout, int recursive, int indent, BIO *out,
                   const char *prog)
{
    OSSL_STORE_CTX *store_ctx = ((void*)0);
    int ret = 1, items = 0;

    if ((store_ctx = OSSL_STORE_open(uri, uimeth, uidata, ((void*)0), ((void*)0)))
        == ((void*)0)) {
        BIO_printf(bio_err, "Couldn't open file or uri %s\n", uri);
        ERR_print_errors(bio_err);
        return ret;
    }

    if (expected != 0) {
        if (!OSSL_STORE_expect(store_ctx, expected)) {
            ERR_print_errors(bio_err);
            goto end2;
        }
    }

    if (criterion != 0) {
        if (!OSSL_STORE_supports_search(store_ctx, criterion)) {
            BIO_printf(bio_err,
                       "%s: the store scheme doesn't support the given search criteria.\n",
                       prog);
            goto end2;
        }

        if (!OSSL_STORE_find(store_ctx, search)) {
            ERR_print_errors(bio_err);
            goto end2;
        }
    }


    ret = 0;

    for (;;) {
        OSSL_STORE_INFO *info = OSSL_STORE_load(store_ctx);
        int type = info == ((void*)0) ? 0 : OSSL_STORE_INFO_get_type(info);
        const char *infostr =
            info == ((void*)0) ? ((void*)0) : OSSL_STORE_INFO_type_string(type);

        if (info == ((void*)0)) {
            if (OSSL_STORE_eof(store_ctx))
                break;

            if (OSSL_STORE_error(store_ctx)) {
                if (recursive)
                    ERR_clear_error();
                else
                    ERR_print_errors(bio_err);
                ret++;
                continue;
            }

            BIO_printf(bio_err,
                       "ERROR: OSSL_STORE_load() returned NULL without "
                       "eof or error indications\n");
            BIO_printf(bio_err, "       This is an error in the loader\n");
            ERR_print_errors(bio_err);
            ret++;
            break;
        }

        if (type == 130) {
            const char *name = OSSL_STORE_INFO_get0_NAME(info);
            const char *desc = OSSL_STORE_INFO_get0_NAME_description(info);
            indent_printf(indent, bio_out, "%d: %s: %s\n", items, infostr,
                          name);
            if (desc != ((void*)0))
                indent_printf(indent, bio_out, "%s\n", desc);
        } else {
            indent_printf(indent, bio_out, "%d: %s\n", items, infostr);
        }






        switch (type) {
        case 130:
            if (recursive) {
                const char *suburi = OSSL_STORE_INFO_get0_NAME(info);
                ret += process(suburi, uimeth, uidata,
                               expected, criterion, search,
                               text, noout, recursive, indent + 2, out, prog);
            }
            break;
        case 129:
            if (text)
                EVP_PKEY_print_params(out, OSSL_STORE_INFO_get0_PARAMS(info),
                                      0, ((void*)0));
            if (!noout)
                PEM_write_bio_Parameters(out,
                                         OSSL_STORE_INFO_get0_PARAMS(info));
            break;
        case 128:
            if (text)
                EVP_PKEY_print_private(out, OSSL_STORE_INFO_get0_PKEY(info),
                                       0, ((void*)0));
            if (!noout)
                PEM_write_bio_PrivateKey(out, OSSL_STORE_INFO_get0_PKEY(info),
                                         ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0));
            break;
        case 132:
            if (text)
                X509_print(out, OSSL_STORE_INFO_get0_CERT(info));
            if (!noout)
                PEM_write_bio_X509(out, OSSL_STORE_INFO_get0_CERT(info));
            break;
        case 131:
            if (text)
                X509_CRL_print(out, OSSL_STORE_INFO_get0_CRL(info));
            if (!noout)
                PEM_write_bio_X509_CRL(out, OSSL_STORE_INFO_get0_CRL(info));
            break;
        default:
            BIO_printf(bio_err, "!!! Unknown code\n");
            ret++;
            break;
        }
        items++;
        OSSL_STORE_INFO_free(info);
    }
    indent_printf(indent, out, "Total found: %d\n", items);

 end2:
    if (!OSSL_STORE_close(store_ctx)) {
        ERR_print_errors(bio_err);
        ret++;
    }

    return ret;
}
