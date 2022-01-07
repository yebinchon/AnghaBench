
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ec_print_t ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef int BIO ;


 scalar_t__ ASN1_buf_print (int *,unsigned char*,size_t,int) ;
 int BIO_indent (int *,int,int) ;
 scalar_t__ BIO_printf (int *,char*,...) ;
 int ECPKParameters_print (int *,int const*,int) ;
 int EC_F_DO_EC_KEY_PRINT ;
 int EC_GROUP_order_bits (int const*) ;
 scalar_t__ EC_KEY_PRINT_PARAM ;
 scalar_t__ EC_KEY_PRINT_PRIVATE ;
 scalar_t__ EC_KEY_PRINT_PUBLIC ;
 int * EC_KEY_get0_group (int const*) ;
 int * EC_KEY_get0_private_key (int const*) ;
 int * EC_KEY_get0_public_key (int const*) ;
 int EC_KEY_get_conv_form (int const*) ;
 size_t EC_KEY_key2buf (int const*,int ,unsigned char**,int *) ;
 size_t EC_KEY_priv2buf (int const*,unsigned char**) ;
 int ECerr (int ,int ) ;
 int ERR_R_EC_LIB ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 int OPENSSL_free (unsigned char*) ;

__attribute__((used)) static int do_EC_KEY_print(BIO *bp, const EC_KEY *x, int off, ec_print_t ktype)
{
    const char *ecstr;
    unsigned char *priv = ((void*)0), *pub = ((void*)0);
    size_t privlen = 0, publen = 0;
    int ret = 0;
    const EC_GROUP *group;

    if (x == ((void*)0) || (group = EC_KEY_get0_group(x)) == ((void*)0)) {
        ECerr(EC_F_DO_EC_KEY_PRINT, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    if (ktype != EC_KEY_PRINT_PARAM && EC_KEY_get0_public_key(x) != ((void*)0)) {
        publen = EC_KEY_key2buf(x, EC_KEY_get_conv_form(x), &pub, ((void*)0));
        if (publen == 0)
            goto err;
    }

    if (ktype == EC_KEY_PRINT_PRIVATE && EC_KEY_get0_private_key(x) != ((void*)0)) {
        privlen = EC_KEY_priv2buf(x, &priv);
        if (privlen == 0)
            goto err;
    }

    if (ktype == EC_KEY_PRINT_PRIVATE)
        ecstr = "Private-Key";
    else if (ktype == EC_KEY_PRINT_PUBLIC)
        ecstr = "Public-Key";
    else
        ecstr = "ECDSA-Parameters";

    if (!BIO_indent(bp, off, 128))
        goto err;
    if (BIO_printf(bp, "%s: (%d bit)\n", ecstr,
                   EC_GROUP_order_bits(group)) <= 0)
        goto err;

    if (privlen != 0) {
        if (BIO_printf(bp, "%*spriv:\n", off, "") <= 0)
            goto err;
        if (ASN1_buf_print(bp, priv, privlen, off + 4) == 0)
            goto err;
    }

    if (publen != 0) {
        if (BIO_printf(bp, "%*spub:\n", off, "") <= 0)
            goto err;
        if (ASN1_buf_print(bp, pub, publen, off + 4) == 0)
            goto err;
    }

    if (!ECPKParameters_print(bp, group, off))
        goto err;
    ret = 1;
 err:
    if (!ret)
        ECerr(EC_F_DO_EC_KEY_PRINT, ERR_R_EC_LIB);
    OPENSSL_clear_free(priv, privlen);
    OPENSSL_free(pub);
    return ret;
}
