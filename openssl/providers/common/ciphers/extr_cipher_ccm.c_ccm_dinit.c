
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccm_init (void*,unsigned char const*,size_t,unsigned char const*,size_t,int ) ;

int ccm_dinit(void *vctx, const unsigned char *key, size_t keylen,
                     const unsigned char *iv, size_t ivlen)
{
    return ccm_init(vctx, key, keylen, iv, ivlen, 0);
}
