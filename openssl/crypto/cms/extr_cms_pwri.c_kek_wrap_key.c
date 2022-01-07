
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 size_t EVP_CIPHER_CTX_block_size (int *) ;
 int EVP_EncryptUpdate (int *,unsigned char*,int*,unsigned char*,size_t) ;
 scalar_t__ RAND_bytes (unsigned char*,size_t) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;

__attribute__((used)) static int kek_wrap_key(unsigned char *out, size_t *outlen,
                        const unsigned char *in, size_t inlen,
                        EVP_CIPHER_CTX *ctx)
{
    size_t blocklen = EVP_CIPHER_CTX_block_size(ctx);
    size_t olen;
    int dummy;




    olen = (inlen + 4 + blocklen - 1) / blocklen;
    olen *= blocklen;
    if (olen < 2 * blocklen) {

        return 0;
    }
    if (inlen > 0xFF) {

        return 0;
    }
    if (out) {

        out[0] = (unsigned char)inlen;
        out[1] = in[0] ^ 0xFF;
        out[2] = in[1] ^ 0xFF;
        out[3] = in[2] ^ 0xFF;
        memcpy(out + 4, in, inlen);

        if (olen > inlen + 4
            && RAND_bytes(out + 4 + inlen, olen - 4 - inlen) <= 0)
            return 0;

        if (!EVP_EncryptUpdate(ctx, out, &dummy, out, olen)
            || !EVP_EncryptUpdate(ctx, out, &dummy, out, olen))
            return 0;
    }

    *outlen = olen;

    return 1;
}
