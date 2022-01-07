
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ASSERT (int ) ;
 size_t PRNG_NONCE_RESET_BYTES ;
 int md_full (scalar_t__,int ,scalar_t__,int ) ;
 int md_kt_size (scalar_t__) ;
 int memcpy (int *,int ,int const) ;
 int min_int (int,int const) ;
 int nonce_data ;
 scalar_t__ nonce_md ;
 scalar_t__ nonce_secret_len ;
 int prng_reset_nonce () ;
 int rand_bytes (int *,int) ;

void
prng_bytes(uint8_t *output, int len)
{
    static size_t processed = 0;

    if (nonce_md)
    {
        const int md_size = md_kt_size(nonce_md);
        while (len > 0)
        {
            const int blen = min_int(len, md_size);
            md_full(nonce_md, nonce_data, md_size + nonce_secret_len, nonce_data);
            memcpy(output, nonce_data, blen);
            output += blen;
            len -= blen;


            processed += blen;
            if (processed > PRNG_NONCE_RESET_BYTES)
            {
                prng_reset_nonce();
                processed = 0;
            }
        }
    }
    else
    {
        ASSERT(rand_bytes(output, len));
    }
}
