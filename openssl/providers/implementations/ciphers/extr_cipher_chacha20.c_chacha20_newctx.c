
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void PROV_CHACHA20_CTX ;


 void* OPENSSL_zalloc (int) ;
 int chacha20_initctx (void*) ;

__attribute__((used)) static void *chacha20_newctx(void *provctx)
{
     PROV_CHACHA20_CTX *ctx = OPENSSL_zalloc(sizeof(*ctx));

     if (ctx != ((void*)0))
         chacha20_initctx(ctx);
     return ctx;
}
