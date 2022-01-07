
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AES_KEY ;


 int AES_BLOCK_SIZE ;
 int const AES_DECRYPT ;
 int const AES_ENCRYPT ;
 int AES_decrypt (unsigned char*,unsigned char*,int const*) ;
 int AES_encrypt (unsigned char*,unsigned char*,int const*) ;
 int OPENSSL_assert (int) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

void AES_bi_ige_encrypt(const unsigned char *in, unsigned char *out,
                        size_t length, const AES_KEY *key,
                        const AES_KEY *key2, const unsigned char *ivec,
                        const int enc)
{
    size_t n;
    size_t len = length;
    unsigned char tmp[AES_BLOCK_SIZE];
    unsigned char tmp2[AES_BLOCK_SIZE];
    unsigned char tmp3[AES_BLOCK_SIZE];
    unsigned char prev[AES_BLOCK_SIZE];
    const unsigned char *iv;
    const unsigned char *iv2;

    OPENSSL_assert(in && out && key && ivec);
    OPENSSL_assert((AES_ENCRYPT == enc) || (AES_DECRYPT == enc));
    OPENSSL_assert((length % AES_BLOCK_SIZE) == 0);

    if (AES_ENCRYPT == enc) {






        iv = ivec;
        iv2 = ivec + AES_BLOCK_SIZE;
        while (len >= AES_BLOCK_SIZE) {
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                out[n] = in[n] ^ iv[n];
            AES_encrypt(out, out, key);
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                out[n] ^= iv2[n];
            iv = out;
            memcpy(prev, in, AES_BLOCK_SIZE);
            iv2 = prev;
            len -= AES_BLOCK_SIZE;
            in += AES_BLOCK_SIZE;
            out += AES_BLOCK_SIZE;
        }


        iv = ivec + AES_BLOCK_SIZE * 2;
        iv2 = ivec + AES_BLOCK_SIZE * 3;
        len = length;
        while (len >= AES_BLOCK_SIZE) {
            out -= AES_BLOCK_SIZE;



            memcpy(tmp, out, AES_BLOCK_SIZE);
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                out[n] ^= iv[n];



            AES_encrypt(out, out, key);






            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                out[n] ^= iv2[n];



            iv = out;
            memcpy(prev, tmp, AES_BLOCK_SIZE);
            iv2 = prev;
            len -= AES_BLOCK_SIZE;
        }
    } else {

        iv = ivec + AES_BLOCK_SIZE * 2;
        iv2 = ivec + AES_BLOCK_SIZE * 3;
        in += length;
        out += length;
        while (len >= AES_BLOCK_SIZE) {
            in -= AES_BLOCK_SIZE;
            out -= AES_BLOCK_SIZE;
            memcpy(tmp, in, AES_BLOCK_SIZE);
            memcpy(tmp2, in, AES_BLOCK_SIZE);
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                tmp[n] ^= iv2[n];
            AES_decrypt(tmp, out, key);
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                out[n] ^= iv[n];
            memcpy(tmp3, tmp2, AES_BLOCK_SIZE);
            iv = tmp3;
            iv2 = out;
            len -= AES_BLOCK_SIZE;
        }


        iv = ivec;
        iv2 = ivec + AES_BLOCK_SIZE;
        len = length;
        while (len >= AES_BLOCK_SIZE) {
            memcpy(tmp, out, AES_BLOCK_SIZE);
            memcpy(tmp2, out, AES_BLOCK_SIZE);
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                tmp[n] ^= iv2[n];
            AES_decrypt(tmp, out, key);
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                out[n] ^= iv[n];
            memcpy(tmp3, tmp2, AES_BLOCK_SIZE);
            iv = tmp3;
            iv2 = out;
            len -= AES_BLOCK_SIZE;
            in += AES_BLOCK_SIZE;
            out += AES_BLOCK_SIZE;
        }
    }
}
