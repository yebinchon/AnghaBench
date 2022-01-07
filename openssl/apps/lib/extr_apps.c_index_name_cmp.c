
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CSTRING ;


 size_t DB_name ;
 int strcmp (int const,int const) ;

int index_name_cmp(const OPENSSL_CSTRING *a, const OPENSSL_CSTRING *b)
{
    return strcmp(a[DB_name], b[DB_name]);
}
