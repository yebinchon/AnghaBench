
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_DigestUpdate (void*,unsigned char const*,size_t) ;

__attribute__((used)) static int digest_update_fn(void *ctx, const unsigned char *buf, size_t buflen)
{
    return EVP_DigestUpdate(ctx, buf, buflen);
}
