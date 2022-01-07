
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BLAKE2S_PARAM ;
typedef int BLAKE2S_CTX ;


 int blake2s_init_param (int *,int const*) ;

int blake2s_init(BLAKE2S_CTX *c, const BLAKE2S_PARAM *P)
{
    blake2s_init_param(c, P);
    return 1;
}
