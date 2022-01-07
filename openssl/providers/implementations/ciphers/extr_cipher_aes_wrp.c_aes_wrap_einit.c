
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aes_wrap_init (void*,unsigned char const*,size_t,unsigned char const*,size_t,int) ;

__attribute__((used)) static int aes_wrap_einit(void *ctx, const unsigned char *key, size_t keylen,
                          const unsigned char *iv, size_t ivlen)
{
    return aes_wrap_init(ctx, key, keylen, iv, ivlen, 1);
}
