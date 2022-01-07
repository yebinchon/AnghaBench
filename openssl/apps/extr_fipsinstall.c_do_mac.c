
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MAC_CTX ;
typedef int BIO ;


 int BIO_read (int *,char*,int ) ;
 int BUFSIZE ;
 int EVP_MAC_final (int *,unsigned char*,size_t*,size_t) ;
 int EVP_MAC_init (int *) ;
 size_t EVP_MAC_size (int *) ;
 int EVP_MAC_update (int *,unsigned char*,int) ;

__attribute__((used)) static int do_mac(EVP_MAC_CTX *ctx, unsigned char *tmp, BIO *in,
                  unsigned char *out, size_t *out_len)
{
    int ret = 0;
    int i;
    size_t outsz = *out_len;

    if (!EVP_MAC_init(ctx))
        goto err;
    if (EVP_MAC_size(ctx) > outsz)
        goto end;
    while ((i = BIO_read(in, (char *)tmp, BUFSIZE)) != 0) {
        if (i < 0 || !EVP_MAC_update(ctx, tmp, i))
            goto err;
    }
end:
    if (!EVP_MAC_final(ctx, out, out_len, outsz))
        goto err;
    ret = 1;
err:
    return ret;
}
