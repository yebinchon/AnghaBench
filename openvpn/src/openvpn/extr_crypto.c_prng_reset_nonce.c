
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int M_FATAL ;
 int md_kt_size (int ) ;
 int msg (int ,char*) ;
 scalar_t__* nonce_data ;
 int nonce_md ;
 int nonce_secret_len ;
 int rand_bytes (scalar_t__*,int const) ;

__attribute__((used)) static void
prng_reset_nonce(void)
{
    const int size = md_kt_size(nonce_md) + nonce_secret_len;

    if (!rand_bytes(nonce_data, size))
    {
        msg(M_FATAL, "ERROR: Random number generator cannot obtain entropy for PRNG");
    }
}
