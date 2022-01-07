
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSSL_NELEM (int ) ;
 int default_table ;
 scalar_t__ param_table ;
 scalar_t__ sk_X509_VERIFY_PARAM_num (scalar_t__) ;

int X509_VERIFY_PARAM_get_count(void)
{
    int num = OSSL_NELEM(default_table);
    if (param_table)
        num += sk_X509_VERIFY_PARAM_num(param_table);
    return num;
}
