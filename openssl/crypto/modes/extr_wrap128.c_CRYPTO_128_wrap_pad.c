
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* block128_f ) (unsigned char*,unsigned char*,void*) ;


 size_t CRYPTO128_WRAP_MAX ;
 int CRYPTO_128_wrap (void*,unsigned char*,unsigned char*,unsigned char*,size_t const,int (*) (unsigned char*,unsigned char*,void*)) ;
 unsigned char* default_aiv ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int memmove (unsigned char*,unsigned char const*,size_t) ;
 int memset (unsigned char*,int ,size_t const) ;

size_t CRYPTO_128_wrap_pad(void *key, const unsigned char *icv,
                           unsigned char *out,
                           const unsigned char *in, size_t inlen,
                           block128_f block)
{






    const size_t blocks_padded = (inlen + 7) / 8;
    const size_t padded_len = blocks_padded * 8;
    const size_t padding_len = padded_len - inlen;

    unsigned char aiv[8];
    int ret;


    if (inlen == 0 || inlen >= CRYPTO128_WRAP_MAX)
        return 0;


    if (!icv)
        memcpy(aiv, default_aiv, 4);
    else
        memcpy(aiv, icv, 4);

    aiv[4] = (inlen >> 24) & 0xFF;
    aiv[5] = (inlen >> 16) & 0xFF;
    aiv[6] = (inlen >> 8) & 0xFF;
    aiv[7] = inlen & 0xFF;

    if (padded_len == 8) {





        memmove(out + 8, in, inlen);
        memcpy(out, aiv, 8);
        memset(out + 8 + inlen, 0, padding_len);
        block(out, out, key);
        ret = 16;
    } else {
        memmove(out, in, inlen);
        memset(out + inlen, 0, padding_len);
        ret = CRYPTO_128_wrap(key, aiv, out, out, padded_len, block);
    }

    return ret;
}
