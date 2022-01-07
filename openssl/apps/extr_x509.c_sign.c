
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509V3_CTX ;
typedef int X509 ;
typedef int EVP_PKEY ;
typedef int EVP_MD ;
typedef int CONF ;


 int ERR_print_errors (int ) ;
 int X509V3_EXT_add_nconf (int *,int *,char const*,int *) ;
 int X509V3_set_ctx (int *,int *,int *,int *,int *,int ) ;
 int X509V3_set_nconf (int *,int *) ;
 int X509_delete_ext (int *,int ) ;
 scalar_t__ X509_get_ext_count (int *) ;
 int X509_get_subject_name (int *) ;
 int X509_set_issuer_name (int *,int ) ;
 int X509_set_pubkey (int *,int *) ;
 int X509_set_version (int *,int) ;
 int X509_sign (int *,int *,int const*) ;
 int bio_err ;
 int set_cert_times (int *,int *,int *,int) ;

__attribute__((used)) static int sign(X509 *x, EVP_PKEY *pkey, EVP_PKEY *fkey, int days, int clrext,
                const EVP_MD *digest, CONF *conf, const char *section,
                int preserve_dates)
{

    if (!X509_set_issuer_name(x, X509_get_subject_name(x)))
        goto err;
    if (!preserve_dates && !set_cert_times(x, ((void*)0), ((void*)0), days))
        goto err;
    if (fkey == ((void*)0) && !X509_set_pubkey(x, pkey))
        goto err;
    if (clrext) {
        while (X509_get_ext_count(x) > 0)
            X509_delete_ext(x, 0);
    }
    if (conf != ((void*)0)) {
        X509V3_CTX ctx;
        X509_set_version(x, 2);
        X509V3_set_ctx(&ctx, x, x, ((void*)0), ((void*)0), 0);
        X509V3_set_nconf(&ctx, conf);
        if (!X509V3_EXT_add_nconf(conf, &ctx, section, x))
            goto err;
    }
    if (!X509_sign(x, pkey, digest))
        goto err;
    return 1;
 err:
    ERR_print_errors(bio_err);
    return 0;
}
