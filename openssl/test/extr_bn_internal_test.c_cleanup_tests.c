
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BN_CTX_free (int ) ;
 int ctx ;

void cleanup_tests(void)
{
    BN_CTX_free(ctx);
}
