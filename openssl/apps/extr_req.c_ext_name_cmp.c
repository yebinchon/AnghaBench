
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_STRING ;


 int strcmp (char const*,char const*) ;

__attribute__((used)) static int ext_name_cmp(const OPENSSL_STRING *a, const OPENSSL_STRING *b)
{
    return strcmp((const char *)a, (const char *)b);
}
