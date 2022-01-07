
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * prefix; } ;
typedef TYPE_1__ PREFIX_CTX ;
typedef int BIO ;


 long BIO_ctrl (int *,int,long,void*) ;
 TYPE_1__* BIO_get_data (int *) ;
 int * BIO_next (int *) ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_strdup (char const*) ;


__attribute__((used)) static long prefix_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    long ret = 0;

    switch (cmd) {
    case 128:
        {
            PREFIX_CTX *ctx = BIO_get_data(b);

            if (ctx == ((void*)0))
                break;

            OPENSSL_free(ctx->prefix);
            ctx->prefix = OPENSSL_strdup((const char *)ptr);
            ret = ctx->prefix != ((void*)0);
        }
        break;
    default:
        if (BIO_next(b) != ((void*)0))
            ret = BIO_ctrl(BIO_next(b), cmd, num, ptr);
        break;
    }
    return ret;
}
