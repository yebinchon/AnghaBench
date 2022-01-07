
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CSTRING ;


 int strcmp (int const,int const) ;

__attribute__((used)) static int section_name_cmp(OPENSSL_CSTRING const *a, OPENSSL_CSTRING const *b)
{
    return strcmp(*a, *b);
}
