
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BLAKE2S_PARAM ;
typedef int BLAKE2S_CTX ;


 int blake2s_init (int *,int *) ;
 int blake2s_param_init (int *) ;

int blake2s256_init(void *ctx)
{
    BLAKE2S_PARAM P;

    blake2s_param_init(&P);
    return blake2s_init((BLAKE2S_CTX *)ctx, &P);
}
