
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BLAKE2B_PARAM ;
typedef int BLAKE2B_CTX ;


 int blake2b_init (int *,int *) ;
 int blake2b_param_init (int *) ;

int blake2b512_init(void *ctx)
{
    BLAKE2B_PARAM P;

    blake2b_param_init(&P);
    return blake2b_init((BLAKE2B_CTX *)ctx, &P);
}
