
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_PKEY_free (int ) ;
 int X509_free (int ) ;
 int cert ;
 int privkey ;

void cleanup_tests(void)
{
    X509_free(cert);
    EVP_PKEY_free(privkey);
}
