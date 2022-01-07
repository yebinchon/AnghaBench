
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_VERIFY_PARAM ;
typedef int TS_VERIFY_CTX ;
typedef int TS_REQ ;
typedef int BIO ;


 int BIO_free_all (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int BIO_printf (int ,char*) ;
 unsigned char* OPENSSL_hexstr2buf (char const*,long*) ;
 int TS_CONF_load_certs (char const*) ;
 int TS_REQ_free (int *) ;
 int * TS_REQ_to_TS_VERIFY_CTX (int *,int *) ;
 int TS_VERIFY_CTX_add_flags (int *,int) ;
 int TS_VERIFY_CTX_free (int *) ;
 int * TS_VERIFY_CTX_new () ;
 int * TS_VERIFY_CTX_set_certs (int *,int ) ;
 int * TS_VERIFY_CTX_set_data (int *,int *) ;
 int * TS_VERIFY_CTX_set_imprint (int *,unsigned char*,long) ;
 int * TS_VERIFY_CTX_set_store (int *,int ) ;
 int TS_VFY_DATA ;
 int TS_VFY_IMPRINT ;
 int TS_VFY_SIGNATURE ;
 int TS_VFY_SIGNER ;
 int TS_VFY_VERSION ;
 int bio_err ;
 int create_cert_store (char const*,char const*,char const*,int *) ;
 int * d2i_TS_REQ_bio (int *,int *) ;

__attribute__((used)) static TS_VERIFY_CTX *create_verify_ctx(const char *data, const char *digest,
                                        const char *queryfile,
                                        const char *CApath, const char *CAfile,
                                        const char *CAstore,
                                        const char *untrusted,
                                        X509_VERIFY_PARAM *vpm)
{
    TS_VERIFY_CTX *ctx = ((void*)0);
    BIO *input = ((void*)0);
    TS_REQ *request = ((void*)0);
    int ret = 0;
    int f = 0;

    if (data != ((void*)0) || digest != ((void*)0)) {
        if ((ctx = TS_VERIFY_CTX_new()) == ((void*)0))
            goto err;
        f = TS_VFY_VERSION | TS_VFY_SIGNER;
        if (data != ((void*)0)) {
            BIO *out = ((void*)0);

            f |= TS_VFY_DATA;
            if ((out = BIO_new_file(data, "rb")) == ((void*)0))
                goto err;
            if (TS_VERIFY_CTX_set_data(ctx, out) == ((void*)0)) {
                BIO_free_all(out);
                goto err;
            }
        } else if (digest != ((void*)0)) {
            long imprint_len;
            unsigned char *hexstr = OPENSSL_hexstr2buf(digest, &imprint_len);
            f |= TS_VFY_IMPRINT;
            if (TS_VERIFY_CTX_set_imprint(ctx, hexstr, imprint_len) == ((void*)0)) {
                BIO_printf(bio_err, "invalid digest string\n");
                goto err;
            }
        }

    } else if (queryfile != ((void*)0)) {
        if ((input = BIO_new_file(queryfile, "rb")) == ((void*)0))
            goto err;
        if ((request = d2i_TS_REQ_bio(input, ((void*)0))) == ((void*)0))
            goto err;
        if ((ctx = TS_REQ_to_TS_VERIFY_CTX(request, ((void*)0))) == ((void*)0))
            goto err;
    } else {
        return ((void*)0);
    }


    TS_VERIFY_CTX_add_flags(ctx, f | TS_VFY_SIGNATURE);


    if (TS_VERIFY_CTX_set_store(ctx,
                                create_cert_store(CApath, CAfile, CAstore, vpm))
            == ((void*)0))
        goto err;


    if (untrusted
        && TS_VERIFY_CTX_set_certs(ctx, TS_CONF_load_certs(untrusted)) == ((void*)0))
        goto err;
    ret = 1;

 err:
    if (!ret) {
        TS_VERIFY_CTX_free(ctx);
        ctx = ((void*)0);
    }
    BIO_free_all(input);
    TS_REQ_free(request);
    return ctx;
}
