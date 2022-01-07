
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aes_ocb_init (void*,unsigned char const*,size_t,unsigned char const*,size_t,int) ;

__attribute__((used)) static int aes_ocb_einit(void *vctx, const unsigned char *key, size_t keylen,
                         const unsigned char *iv, size_t ivlen)
{
    return aes_ocb_init(vctx, key, keylen, iv, ivlen, 1);
}
