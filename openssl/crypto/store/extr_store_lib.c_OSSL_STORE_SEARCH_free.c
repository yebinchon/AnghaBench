
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_STORE_SEARCH ;


 int OPENSSL_free (int *) ;

void OSSL_STORE_SEARCH_free(OSSL_STORE_SEARCH *search)
{
    OPENSSL_free(search);
}
