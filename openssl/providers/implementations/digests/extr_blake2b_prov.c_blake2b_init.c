
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BLAKE2B_PARAM ;
typedef int BLAKE2B_CTX ;


 int blake2b_init_param (int *,int const*) ;

int blake2b_init(BLAKE2B_CTX *c, const BLAKE2B_PARAM *P)
{
    blake2b_init_param(c, P);
    return 1;
}
