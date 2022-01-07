
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROPERTY_LIST ;


 int OPENSSL_free (int *) ;

void ossl_property_free(OSSL_PROPERTY_LIST *p)
{
    OPENSSL_free(p);
}
