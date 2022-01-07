
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_free_ex_index_ex (int *,int,int) ;

int CRYPTO_free_ex_index(int class_index, int idx)
{
    return crypto_free_ex_index_ex(((void*)0), class_index, idx);
}
