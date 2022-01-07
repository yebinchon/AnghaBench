
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cipher_kt_t ;


 int M_WARN ;
 scalar_t__ cipher_kt_insecure (int const*) ;
 int msg (int ,char*) ;

__attribute__((used)) static void
tls_limit_reneg_bytes(const cipher_kt_t *cipher, int *reneg_bytes)
{
    if (cipher && cipher_kt_insecure(cipher))
    {
        if (*reneg_bytes == -1)
        {
            msg(M_WARN, "WARNING: cipher with small block size in use, "
                "reducing reneg-bytes to 64MB to mitigate SWEET32 attacks.");
            *reneg_bytes = 64 * 1024 * 1024;
        }
    }
}
