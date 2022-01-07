
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int HMAC_CTX ;


 int HMAC_crunch (int ,int const*,size_t) ;
 int HMAC_finish (int ,int *,...) ;
 int HMAC_setup (int ,int const*,size_t) ;
 unsigned int SHA256_DIGEST_LENGTH ;
 int assert (int) ;

__attribute__((used)) static void
HMACsha256(const uint8_t *message, size_t messageLen, const uint8_t *key,
           size_t keylen, uint8_t *digest)
{
    unsigned int digestLen;
    HMAC_CTX ctx;

    HMAC_setup(ctx, key, keylen);
    HMAC_crunch(ctx, message, messageLen);





    HMAC_finish(ctx, digest, digestLen);


    assert(digestLen == 32);
}
