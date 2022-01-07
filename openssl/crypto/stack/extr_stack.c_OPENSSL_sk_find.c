
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_STACK ;


 int OSSL_BSEARCH_FIRST_VALUE_ON_MATCH ;
 int internal_find (int *,void const*,int ) ;

int OPENSSL_sk_find(OPENSSL_STACK *st, const void *data)
{
    return internal_find(st, data, OSSL_BSEARCH_FIRST_VALUE_ON_MATCH);
}
