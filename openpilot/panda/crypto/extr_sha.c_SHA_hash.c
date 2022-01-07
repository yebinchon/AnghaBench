
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int SHA_CTX ;


 int SHA_DIGEST_SIZE ;
 int SHA_final (int *) ;
 int SHA_init (int *) ;
 int SHA_update (int *,void const*,int) ;
 int memcpy (int const*,int ,int ) ;

const uint8_t* SHA_hash(const void* data, int len, uint8_t* digest) {
    SHA_CTX ctx;
    SHA_init(&ctx);
    SHA_update(&ctx, data, len);
    memcpy(digest, SHA_final(&ctx), SHA_DIGEST_SIZE);
    return digest;
}
