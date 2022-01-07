
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* OPENSSL_CSTRING ;


 size_t DB_serial ;
 unsigned long OPENSSL_LH_strhash (char const*) ;

__attribute__((used)) static unsigned long index_serial_hash(const OPENSSL_CSTRING *a)
{
    const char *n;

    n = a[DB_serial];
    while (*n == '0')
        n++;
    return OPENSSL_LH_strhash(n);
}
