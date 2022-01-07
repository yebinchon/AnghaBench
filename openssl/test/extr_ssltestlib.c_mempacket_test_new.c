
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int droprec; scalar_t__ dropepoch; struct TYPE_7__* pkts; } ;
typedef TYPE_1__ MEMPACKET_TEST_CTX ;
typedef int BIO ;


 int BIO_set_data (int *,TYPE_1__*) ;
 int BIO_set_init (int *,int) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int TEST_ptr (TYPE_1__*) ;
 TYPE_1__* sk_MEMPACKET_new_null () ;

__attribute__((used)) static int mempacket_test_new(BIO *bio)
{
    MEMPACKET_TEST_CTX *ctx;

    if (!TEST_ptr(ctx = OPENSSL_zalloc(sizeof(*ctx))))
        return 0;
    if (!TEST_ptr(ctx->pkts = sk_MEMPACKET_new_null())) {
        OPENSSL_free(ctx);
        return 0;
    }
    ctx->dropepoch = 0;
    ctx->droprec = -1;
    BIO_set_init(bio, 1);
    BIO_set_data(bio, ctx);
    return 1;
}
