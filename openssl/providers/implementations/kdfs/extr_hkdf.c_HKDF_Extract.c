
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int EVP_MD_size (int const*) ;
 int * HMAC (int const*,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char*,int *) ;
 int PROV_R_WRONG_OUTPUT_BUFFER_SIZE ;

__attribute__((used)) static int HKDF_Extract(const EVP_MD *evp_md,
                        const unsigned char *salt, size_t salt_len,
                        const unsigned char *ikm, size_t ikm_len,
                        unsigned char *prk, size_t prk_len)
{
    int sz = EVP_MD_size(evp_md);

    if (sz < 0)
        return 0;
    if (prk_len != (size_t)sz) {
        ERR_raise(ERR_LIB_PROV, PROV_R_WRONG_OUTPUT_BUFFER_SIZE);
        return 0;
    }

    return HMAC(evp_md, salt, salt_len, ikm, ikm_len, prk, ((void*)0)) != ((void*)0);
}
