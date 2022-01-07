
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBKDF ;


 int OPENSSL_free (int *) ;
 int kbkdf_reset (int *) ;

__attribute__((used)) static void kbkdf_free(void *vctx)
{
    KBKDF *ctx = (KBKDF *)vctx;

    kbkdf_reset(ctx);
    OPENSSL_free(ctx);
}
