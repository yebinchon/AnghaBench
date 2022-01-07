
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* block128_f ) (unsigned char*,unsigned char*,void const*) ;


 int CRYPTO_cbc128_encrypt (unsigned char const*,unsigned char*,size_t,void const*,unsigned char*,int (*) (unsigned char*,unsigned char*,void const*)) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int stub1 (unsigned char*,unsigned char*,void const*) ;

size_t CRYPTO_nistcts128_encrypt_block(const unsigned char *in,
                                       unsigned char *out, size_t len,
                                       const void *key,
                                       unsigned char ivec[16],
                                       block128_f block)
{
    size_t residue, n;

    if (len < 16)
        return 0;

    residue = len % 16;

    len -= residue;

    CRYPTO_cbc128_encrypt(in, out, len, key, ivec, block);

    if (residue == 0)
        return len;

    in += len;
    out += len;

    for (n = 0; n < residue; ++n)
        ivec[n] ^= in[n];
    (*block) (ivec, ivec, key);
    memcpy(out - 16 + residue, ivec, 16);

    return len + residue;
}
