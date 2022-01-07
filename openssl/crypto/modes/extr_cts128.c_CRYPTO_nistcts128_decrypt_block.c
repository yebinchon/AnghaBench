
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* block128_f ) (unsigned char const*,unsigned char*,void const*) ;


 int CRYPTO_cbc128_decrypt (unsigned char const*,unsigned char*,size_t,void const*,unsigned char*,int (*) (unsigned char const*,unsigned char*,void const*)) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int stub1 (unsigned char const*,unsigned char*,void const*) ;
 int stub2 (unsigned char const*,unsigned char*,void const*) ;

size_t CRYPTO_nistcts128_decrypt_block(const unsigned char *in,
                                       unsigned char *out, size_t len,
                                       const void *key,
                                       unsigned char ivec[16],
                                       block128_f block)
{
    size_t residue, n;
    union {
        size_t align;
        unsigned char c[32];
    } tmp;

    if (len < 16)
        return 0;

    residue = len % 16;

    if (residue == 0) {
        CRYPTO_cbc128_decrypt(in, out, len, key, ivec, block);
        return len;
    }

    len -= 16 + residue;

    if (len) {
        CRYPTO_cbc128_decrypt(in, out, len, key, ivec, block);
        in += len;
        out += len;
    }

    (*block) (in + residue, tmp.c + 16, key);

    memcpy(tmp.c, tmp.c + 16, 16);
    memcpy(tmp.c, in, residue);
    (*block) (tmp.c, tmp.c, key);

    for (n = 0; n < 16; ++n) {
        unsigned char c = in[n];
        out[n] = tmp.c[n] ^ ivec[n];
        ivec[n] = in[n + residue];
        tmp.c[n] = c;
    }
    for (residue += 16; n < residue; ++n)
        out[n] = tmp.c[n] ^ tmp.c[n - 16];

    return 16 + len + residue;
}
