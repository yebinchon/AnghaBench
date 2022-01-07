
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;


 int RSA_check_key_ex (int const*,int *) ;

int RSA_check_key(const RSA *key)
{
    return RSA_check_key_ex(key, ((void*)0));
}
