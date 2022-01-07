
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int buf ;
struct TYPE_4__ {scalar_t__ len; int exponent; } ;
typedef TYPE_1__ RSAPublicKey ;


 int RSANUMBYTES ;
 scalar_t__ RSANUMWORDS ;
 int const SHA_DIGEST_SIZE ;
 int modpow (TYPE_1__ const*,int*) ;
 int printf (char*,...) ;
 int* sha_padding_1024 ;

int RSA_verify(const RSAPublicKey *key,
               const uint8_t *signature,
               const int len,
               const uint8_t *hash,
               const int hash_len) {
    uint8_t buf[RSANUMBYTES];
    int i;


    if (key->len != RSANUMWORDS) {
        return 0;
    }

    if (len != sizeof(buf)) {
        return 0;
    }

    if (hash_len != SHA_DIGEST_SIZE) {
        return 0;
    }

    if (key->exponent != 3 && key->exponent != 65537) {
        return 0;
    }

    for (i = 0; i < len; ++i) {
        buf[i] = signature[i];
    }

    modpow(key, buf);
    for (i = len - hash_len; i < len; ++i) {
        buf[i] ^= *hash++;
    }
    for (i = 0; i < RSANUMBYTES; ++i) {
        if (buf[i] != sha_padding_1024[i]) {
            return 0;
        }
    }

    return 1;
}
