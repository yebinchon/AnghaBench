
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* block128_f ) (unsigned char const*,unsigned char*,void const*) ;


 scalar_t__ STRICT_ALIGNMENT ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int stub1 (unsigned char const*,unsigned char*,void const*) ;
 int stub2 (unsigned char const*,unsigned char*,void const*) ;
 int stub3 (unsigned char const*,unsigned char*,void const*) ;
 int stub4 (unsigned char const*,unsigned char*,void const*) ;
 int stub5 (unsigned char const*,unsigned char*,void const*) ;

void CRYPTO_cbc128_decrypt(const unsigned char *in, unsigned char *out,
                           size_t len, const void *key,
                           unsigned char ivec[16], block128_f block)
{
    size_t n;
    union {
        size_t t[16 / sizeof(size_t)];
        unsigned char c[16];
    } tmp;

    if (len == 0)
        return;


    if (in != out) {
        const unsigned char *iv = ivec;

        if (STRICT_ALIGNMENT &&
            ((size_t)in | (size_t)out | (size_t)ivec) % sizeof(size_t) != 0) {
            while (len >= 16) {
                (*block) (in, out, key);
                for (n = 0; n < 16; ++n)
                    out[n] ^= iv[n];
                iv = in;
                len -= 16;
                in += 16;
                out += 16;
            }
        } else if (16 % sizeof(size_t) == 0) {
            while (len >= 16) {
                size_t *out_t = (size_t *)out, *iv_t = (size_t *)iv;

                (*block) (in, out, key);
                for (n = 0; n < 16 / sizeof(size_t); n++)
                    out_t[n] ^= iv_t[n];
                iv = in;
                len -= 16;
                in += 16;
                out += 16;
            }
        }
        memcpy(ivec, iv, 16);
    } else {
        if (STRICT_ALIGNMENT &&
            ((size_t)in | (size_t)out | (size_t)ivec) % sizeof(size_t) != 0) {
            unsigned char c;
            while (len >= 16) {
                (*block) (in, tmp.c, key);
                for (n = 0; n < 16; ++n) {
                    c = in[n];
                    out[n] = tmp.c[n] ^ ivec[n];
                    ivec[n] = c;
                }
                len -= 16;
                in += 16;
                out += 16;
            }
        } else if (16 % sizeof(size_t) == 0) {
            while (len >= 16) {
                size_t c, *out_t = (size_t *)out, *ivec_t = (size_t *)ivec;
                const size_t *in_t = (const size_t *)in;

                (*block) (in, tmp.c, key);
                for (n = 0; n < 16 / sizeof(size_t); n++) {
                    c = in_t[n];
                    out_t[n] = tmp.t[n] ^ ivec_t[n];
                    ivec_t[n] = c;
                }
                len -= 16;
                in += 16;
                out += 16;
            }
        }
    }

    while (len) {
        unsigned char c;
        (*block) (in, tmp.c, key);
        for (n = 0; n < 16 && n < len; ++n) {
            c = in[n];
            out[n] = tmp.c[n] ^ ivec[n];
            ivec[n] = c;
        }
        if (len <= 16) {
            for (; n < 16; ++n)
                ivec[n] = in[n];
            break;
        }
        len -= 16;
        in += 16;
        out += 16;
    }
}
