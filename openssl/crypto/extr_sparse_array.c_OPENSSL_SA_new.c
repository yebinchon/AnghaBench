
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_SA ;


 int * OPENSSL_zalloc (int) ;

OPENSSL_SA *OPENSSL_SA_new(void)
{
    OPENSSL_SA *res = OPENSSL_zalloc(sizeof(*res));

    return res;
}
