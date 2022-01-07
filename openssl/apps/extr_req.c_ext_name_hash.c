
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_STRING ;


 unsigned long OPENSSL_LH_strhash (char const*) ;

__attribute__((used)) static unsigned long ext_name_hash(const OPENSSL_STRING *a)
{
    return OPENSSL_LH_strhash((const char *)a);
}
