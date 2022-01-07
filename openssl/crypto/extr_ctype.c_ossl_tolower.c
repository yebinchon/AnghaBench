
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int case_change ;
 scalar_t__ ossl_isupper (int) ;

int ossl_tolower(int c)
{
    return ossl_isupper(c) ? c ^ case_change : c;
}
