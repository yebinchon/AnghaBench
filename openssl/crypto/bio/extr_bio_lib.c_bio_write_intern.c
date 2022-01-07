
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {int * callback_ex; int * callback; int num_write; TYPE_1__* method; int init; } ;
struct TYPE_6__ {int (* bwrite ) (TYPE_2__*,void const*,size_t,size_t*) ;} ;
typedef TYPE_2__ BIO ;


 int BIO_CB_RETURN ;
 int BIO_CB_WRITE ;
 int BIO_F_BIO_WRITE_INTERN ;
 int BIO_R_UNINITIALIZED ;
 int BIO_R_UNSUPPORTED_METHOD ;
 int BIOerr (int ,int ) ;
 scalar_t__ bio_call_callback (TYPE_2__*,int,void const*,size_t,int ,long,int,size_t*) ;
 int stub1 (TYPE_2__*,void const*,size_t,size_t*) ;

__attribute__((used)) static int bio_write_intern(BIO *b, const void *data, size_t dlen,
                            size_t *written)
{
    int ret;

    if (b == ((void*)0))
        return 0;

    if ((b->method == ((void*)0)) || (b->method->bwrite == ((void*)0))) {
        BIOerr(BIO_F_BIO_WRITE_INTERN, BIO_R_UNSUPPORTED_METHOD);
        return -2;
    }

    if ((b->callback != ((void*)0) || b->callback_ex != ((void*)0)) &&
        ((ret = (int)bio_call_callback(b, BIO_CB_WRITE, data, dlen, 0, 0L, 1L,
                                       ((void*)0))) <= 0))
        return ret;

    if (!b->init) {
        BIOerr(BIO_F_BIO_WRITE_INTERN, BIO_R_UNINITIALIZED);
        return -2;
    }

    ret = b->method->bwrite(b, data, dlen, written);

    if (ret > 0)
        b->num_write += (uint64_t)*written;

    if (b->callback != ((void*)0) || b->callback_ex != ((void*)0))
        ret = (int)bio_call_callback(b, BIO_CB_WRITE | BIO_CB_RETURN, data,
                                     dlen, 0, 0L, ret, written);

    return ret;
}
