
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct bio_bio_st {size_t size; int closed; scalar_t__ len; TYPE_1__* peer; int * buf; int offset; scalar_t__ request; } ;
struct TYPE_12__ {long shutdown; struct bio_bio_st* ptr; } ;
struct TYPE_11__ {struct bio_bio_st* ptr; } ;
typedef TYPE_2__ BIO ;
 int BIO_F_BIO_CTRL ;
 int BIO_R_INVALID_ARGUMENT ;
 int BIO_R_IN_USE ;
 int BIOerr (int ,int ) ;
 int OPENSSL_free (int *) ;
 int assert (int ) ;
 int bio_destroy_pair (TYPE_2__*) ;
 int bio_make_pair (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ bio_nread (TYPE_2__*,void*,size_t) ;
 scalar_t__ bio_nread0 (TYPE_2__*,void*) ;
 scalar_t__ bio_nwrite (TYPE_2__*,void*,size_t) ;
 scalar_t__ bio_nwrite0 (TYPE_2__*,void*) ;

__attribute__((used)) static long bio_ctrl(BIO *bio, int cmd, long num, void *ptr)
{
    long ret;
    struct bio_bio_st *b = bio->ptr;

    assert(b != ((void*)0));

    switch (cmd) {


    case 129:
        if (b->peer) {
            BIOerr(BIO_F_BIO_CTRL, BIO_R_IN_USE);
            ret = 0;
        } else if (num == 0) {
            BIOerr(BIO_F_BIO_CTRL, BIO_R_INVALID_ARGUMENT);
            ret = 0;
        } else {
            size_t new_size = num;

            if (b->size != new_size) {
                OPENSSL_free(b->buf);
                b->buf = ((void*)0);
                b->size = new_size;
            }
            ret = 1;
        }
        break;

    case 137:
        ret = (long)b->size;
        break;

    case 135:
        {
            BIO *other_bio = ptr;

            if (bio_make_pair(bio, other_bio))
                ret = 1;
            else
                ret = 0;
        }
        break;

    case 139:




        bio_destroy_pair(bio);
        ret = 1;
        break;

    case 136:




        if (b->peer == ((void*)0) || b->closed)
            ret = 0;
        else
            ret = (long)b->size - b->len;
        break;

    case 138:





        ret = (long)b->request;
        break;

    case 130:





        b->request = 0;
        ret = 1;
        break;

    case 128:

        b->closed = 1;
        ret = 1;
        break;

    case 133:

        ret = (long)bio_nread0(bio, ptr);
        break;

    case 134:

        ret = (long)bio_nread(bio, ptr, (size_t)num);
        break;

    case 131:

        ret = (long)bio_nwrite0(bio, ptr);
        break;

    case 132:

        ret = (long)bio_nwrite(bio, ptr, (size_t)num);
        break;



    case 142:
        if (b->buf != ((void*)0)) {
            b->len = 0;
            b->offset = 0;
        }
        ret = 0;
        break;

    case 144:
        ret = bio->shutdown;
        break;

    case 141:
        bio->shutdown = (int)num;
        ret = 1;
        break;

    case 143:
        if (b->peer != ((void*)0)) {
            struct bio_bio_st *peer_b = b->peer->ptr;

            ret = (long)peer_b->len;
        } else
            ret = 0;
        break;

    case 140:
        if (b->buf != ((void*)0))
            ret = (long)b->len;
        else
            ret = 0;
        break;

    case 147:

        {
            BIO *other_bio = ptr;
            struct bio_bio_st *other_b;

            assert(other_bio != ((void*)0));
            other_b = other_bio->ptr;
            assert(other_b != ((void*)0));

            assert(other_b->buf == ((void*)0));

            other_b->size = b->size;
        }

        ret = 1;
        break;

    case 145:
        ret = 1;
        break;

    case 146:
        if (b->peer != ((void*)0)) {
            struct bio_bio_st *peer_b = b->peer->ptr;

            if (peer_b->len == 0 && peer_b->closed)
                ret = 1;
            else
                ret = 0;
        } else {
            ret = 1;
        }
        break;

    default:
        ret = 0;
    }
    return ret;
}
