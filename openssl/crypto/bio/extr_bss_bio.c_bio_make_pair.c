
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bio_bio_st {scalar_t__ request; scalar_t__ closed; TYPE_1__* peer; scalar_t__ offset; scalar_t__ len; int * buf; int size; } ;
struct TYPE_4__ {int init; struct bio_bio_st* ptr; } ;
typedef TYPE_1__ BIO ;


 int BIO_F_BIO_MAKE_PAIR ;
 int BIO_R_IN_USE ;
 int BIOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 void* OPENSSL_malloc (int ) ;
 int assert (int ) ;

__attribute__((used)) static int bio_make_pair(BIO *bio1, BIO *bio2)
{
    struct bio_bio_st *b1, *b2;

    assert(bio1 != ((void*)0));
    assert(bio2 != ((void*)0));

    b1 = bio1->ptr;
    b2 = bio2->ptr;

    if (b1->peer != ((void*)0) || b2->peer != ((void*)0)) {
        BIOerr(BIO_F_BIO_MAKE_PAIR, BIO_R_IN_USE);
        return 0;
    }

    if (b1->buf == ((void*)0)) {
        b1->buf = OPENSSL_malloc(b1->size);
        if (b1->buf == ((void*)0)) {
            BIOerr(BIO_F_BIO_MAKE_PAIR, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        b1->len = 0;
        b1->offset = 0;
    }

    if (b2->buf == ((void*)0)) {
        b2->buf = OPENSSL_malloc(b2->size);
        if (b2->buf == ((void*)0)) {
            BIOerr(BIO_F_BIO_MAKE_PAIR, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        b2->len = 0;
        b2->offset = 0;
    }

    b1->peer = bio2;
    b1->closed = 0;
    b1->request = 0;
    b2->peer = bio1;
    b2->closed = 0;
    b2->request = 0;

    bio1->init = 1;
    bio2->init = 1;

    return 1;
}
