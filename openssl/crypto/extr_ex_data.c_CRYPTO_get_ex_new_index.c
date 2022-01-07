
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRYPTO_EX_new ;
typedef int CRYPTO_EX_free ;
typedef int CRYPTO_EX_dup ;


 int crypto_get_ex_new_index_ex (int *,int,long,void*,int *,int *,int *) ;

int CRYPTO_get_ex_new_index(int class_index, long argl, void *argp,
                            CRYPTO_EX_new *new_func, CRYPTO_EX_dup *dup_func,
                            CRYPTO_EX_free *free_func)
{
    return crypto_get_ex_new_index_ex(((void*)0), class_index, argl, argp, new_func,
                                      dup_func, free_func);
}
