
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long OPENSSL_VERSION_NUMBER ;

unsigned long OpenSSL_version_num(void)
{
    return OPENSSL_VERSION_NUMBER;
}
