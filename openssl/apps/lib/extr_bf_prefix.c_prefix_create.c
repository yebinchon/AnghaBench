
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int linestart; int * prefix; } ;
typedef TYPE_1__ PREFIX_CTX ;
typedef int BIO ;


 int BIO_set_data (int *,TYPE_1__*) ;
 int BIO_set_init (int *,int) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

__attribute__((used)) static int prefix_create(BIO *b)
{
    PREFIX_CTX *ctx = OPENSSL_zalloc(sizeof(*ctx));

    if (ctx == ((void*)0))
        return 0;

    ctx->prefix = ((void*)0);
    ctx->linestart = 1;
    BIO_set_data(b, ctx);
    BIO_set_init(b, 1);
    return 1;
}
