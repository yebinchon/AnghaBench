
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BN_CTX_free (int ) ;
 int BN_free (int ) ;
 int b1 ;
 int b2 ;
 int b3 ;
 int b4 ;
 int b5 ;
 int ctx ;

void FuzzerCleanup(void)
{
    BN_free(b1);
    BN_free(b2);
    BN_free(b3);
    BN_free(b4);
    BN_free(b5);
    BN_CTX_free(ctx);
}
