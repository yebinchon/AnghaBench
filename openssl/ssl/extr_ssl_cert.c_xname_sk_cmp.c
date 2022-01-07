
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME ;


 int xname_cmp (int const* const,int const* const) ;

__attribute__((used)) static int xname_sk_cmp(const X509_NAME *const *a, const X509_NAME *const *b)
{
    return xname_cmp(*a, *b);
}
