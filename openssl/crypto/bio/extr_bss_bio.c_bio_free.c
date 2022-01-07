
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bio_bio_st {struct bio_bio_st* buf; scalar_t__ peer; } ;
struct TYPE_4__ {struct bio_bio_st* ptr; } ;
typedef TYPE_1__ BIO ;


 int OPENSSL_free (struct bio_bio_st*) ;
 int assert (int ) ;
 int bio_destroy_pair (TYPE_1__*) ;

__attribute__((used)) static int bio_free(BIO *bio)
{
    struct bio_bio_st *b;

    if (bio == ((void*)0))
        return 0;
    b = bio->ptr;

    assert(b != ((void*)0));

    if (b->peer)
        bio_destroy_pair(bio);

    OPENSSL_free(b->buf);
    OPENSSL_free(b);

    return 1;
}
