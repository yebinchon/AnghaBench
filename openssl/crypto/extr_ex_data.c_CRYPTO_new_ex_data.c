
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRYPTO_EX_DATA ;


 int crypto_new_ex_data_ex (int *,int,void*,int *) ;

int CRYPTO_new_ex_data(int class_index, void *obj, CRYPTO_EX_DATA *ad)
{
    return crypto_new_ex_data_ex(((void*)0), class_index, obj, ad);
}
