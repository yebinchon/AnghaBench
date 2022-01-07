
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int EVP_MAC_CTX ;


 scalar_t__ EVP_MAC_CTX_set_params (int *,int *) ;
 size_t EVP_MAX_MD_SIZE ;
 unsigned char* OPENSSL_zalloc (size_t) ;
 int OSSL_MAC_PARAM_CUSTOM ;
 int OSSL_MAC_PARAM_SIZE ;
 int OSSL_PARAM_construct_end () ;
 int OSSL_PARAM_construct_octet_string (int ,void*,size_t) ;
 int OSSL_PARAM_construct_size_t (int ,size_t*) ;

__attribute__((used)) static int kmac_init(EVP_MAC_CTX *ctx, const unsigned char *custom,
                     size_t custom_len, size_t kmac_out_len,
                     size_t derived_key_len, unsigned char **out)
{
    OSSL_PARAM params[2];


    if (custom == ((void*)0))
        return 1;

    params[0] = OSSL_PARAM_construct_octet_string(OSSL_MAC_PARAM_CUSTOM,
                                                  (void *)custom, custom_len);
    params[1] = OSSL_PARAM_construct_end();

    if (!EVP_MAC_CTX_set_params(ctx, params))
        return 0;


    if (kmac_out_len == 0)
        kmac_out_len = derived_key_len;

    else if (!(kmac_out_len == derived_key_len
            || kmac_out_len == 20
            || kmac_out_len == 28
            || kmac_out_len == 32
            || kmac_out_len == 48
            || kmac_out_len == 64))
        return 0;

    params[0] = OSSL_PARAM_construct_size_t(OSSL_MAC_PARAM_SIZE,
                                            &kmac_out_len);

    if (EVP_MAC_CTX_set_params(ctx, params) <= 0)
        return 0;





    if (kmac_out_len > EVP_MAX_MD_SIZE) {
        *out = OPENSSL_zalloc(kmac_out_len);
        if (*out == ((void*)0))
            return 0;
    }
    return 1;
}
