
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 int memcpy (unsigned char*,unsigned char const*,size_t) ;

__attribute__((used)) static int null_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                       const unsigned char *in, size_t inl)
{
    if (in != out)
        memcpy(out, in, inl);
    return 1;
}
