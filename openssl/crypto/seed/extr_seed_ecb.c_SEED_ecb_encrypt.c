
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SEED_KEY_SCHEDULE ;


 int SEED_decrypt (unsigned char const*,unsigned char*,int const*) ;
 int SEED_encrypt (unsigned char const*,unsigned char*,int const*) ;

void SEED_ecb_encrypt(const unsigned char *in, unsigned char *out,
                      const SEED_KEY_SCHEDULE *ks, int enc)
{
    if (enc)
        SEED_encrypt(in, out, ks);
    else
        SEED_decrypt(in, out, ks);
}
