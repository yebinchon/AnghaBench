
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_CIPHER_CTX ;


 size_t MAXCHUNK ;
 int cipher_hw_generic_cfb8 (int *,unsigned char*,unsigned char const*,size_t) ;

int cipher_hw_chunked_cfb8(PROV_CIPHER_CTX *ctx, unsigned char *out,
                           const unsigned char *in, size_t inl)
{
    size_t chunk = MAXCHUNK;

    if (inl < chunk)
        chunk = inl;
    while (inl > 0 && inl >= chunk) {
        cipher_hw_generic_cfb8(ctx, out, in, inl);
        inl -= chunk;
        in += chunk;
        out += chunk;
        if (inl < chunk)
            chunk = inl;
    }
    return 1;
}
