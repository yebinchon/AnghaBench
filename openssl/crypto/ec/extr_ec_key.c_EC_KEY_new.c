
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY ;


 int * ec_key_new_method_int (int *,int *) ;

EC_KEY *EC_KEY_new(void)
{
    return ec_key_new_method_int(((void*)0), ((void*)0));
}
