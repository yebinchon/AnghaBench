
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* prefix; } ;
typedef TYPE_1__ PREFIX_CTX ;
typedef int BIO ;


 TYPE_1__* BIO_get_data (int *) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static int prefix_destroy(BIO *b)
{
    PREFIX_CTX *ctx = BIO_get_data(b);

    OPENSSL_free(ctx->prefix);
    OPENSSL_free(ctx);
    return 1;
}
