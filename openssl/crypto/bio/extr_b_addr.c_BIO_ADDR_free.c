
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_ADDR ;


 int OPENSSL_free (int *) ;

void BIO_ADDR_free(BIO_ADDR *ap)
{
    OPENSSL_free(ap);
}
