
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pkts; } ;
typedef TYPE_1__ MEMPACKET_TEST_CTX ;
typedef int BIO ;


 TYPE_1__* BIO_get_data (int *) ;
 int BIO_set_data (int *,int *) ;
 int BIO_set_init (int *,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int mempacket_free ;
 int sk_MEMPACKET_pop_free (int ,int ) ;

__attribute__((used)) static int mempacket_test_free(BIO *bio)
{
    MEMPACKET_TEST_CTX *ctx = BIO_get_data(bio);

    sk_MEMPACKET_pop_free(ctx->pkts, mempacket_free);
    OPENSSL_free(ctx);
    BIO_set_data(bio, ((void*)0));
    BIO_set_init(bio, 0);
    return 1;
}
