
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_CIPHER_CTX ;


 size_t MAXCHUNK ;
 int cipher_hw_generic_ofb128 (int *,unsigned char*,unsigned char const*,size_t) ;

int cipher_hw_chunked_ofb128(PROV_CIPHER_CTX *ctx, unsigned char *out,
                             const unsigned char *in, size_t inl)
{
    while (inl >= MAXCHUNK) {
        cipher_hw_generic_ofb128(ctx, out, in, MAXCHUNK);
        inl -= MAXCHUNK;
        in += MAXCHUNK;
        out += MAXCHUNK;
    }
    if (inl > 0)
        cipher_hw_generic_ofb128(ctx, out, in, inl);
    return 1;
}
