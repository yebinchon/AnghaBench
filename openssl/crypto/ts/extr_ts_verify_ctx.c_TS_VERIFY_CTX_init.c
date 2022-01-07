
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_VERIFY_CTX ;


 int OPENSSL_assert (int ) ;
 int memset (int *,int ,int) ;

void TS_VERIFY_CTX_init(TS_VERIFY_CTX *ctx)
{
    OPENSSL_assert(ctx != ((void*)0));
    memset(ctx, 0, sizeof(*ctx));
}
