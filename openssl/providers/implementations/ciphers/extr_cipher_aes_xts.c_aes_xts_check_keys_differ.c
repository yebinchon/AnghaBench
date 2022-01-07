
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CRYPTO_memcmp (unsigned char const*,unsigned char const*,size_t) ;
 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_XTS_DUPLICATED_KEYS ;
 int allow_insecure_decrypt ;

__attribute__((used)) static int aes_xts_check_keys_differ(const unsigned char *key, size_t bytes,
                                     int enc)
{
    if ((!allow_insecure_decrypt || enc)
            && CRYPTO_memcmp(key, key + bytes, bytes) == 0) {
        ERR_raise(ERR_LIB_PROV, PROV_R_XTS_DUPLICATED_KEYS);
        return 0;
    }
    return 1;
}
