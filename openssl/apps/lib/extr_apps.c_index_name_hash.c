
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CSTRING ;


 size_t DB_name ;
 unsigned long OPENSSL_LH_strhash (int const) ;

__attribute__((used)) static unsigned long index_name_hash(const OPENSSL_CSTRING *a)
{
    return OPENSSL_LH_strhash(a[DB_name]);
}
