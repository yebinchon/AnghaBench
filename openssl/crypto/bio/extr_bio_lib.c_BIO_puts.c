
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {int * callback_ex; int * callback; int num_write; TYPE_1__* method; int init; } ;
struct TYPE_6__ {int (* bputs ) (TYPE_2__*,char const*) ;} ;
typedef TYPE_2__ BIO ;


 int BIO_CB_PUTS ;
 int BIO_CB_RETURN ;
 int BIO_F_BIO_PUTS ;
 int BIO_R_LENGTH_TOO_LONG ;
 int BIO_R_UNINITIALIZED ;
 int BIO_R_UNSUPPORTED_METHOD ;
 int BIOerr (int ,int ) ;
 size_t INT_MAX ;
 scalar_t__ bio_call_callback (TYPE_2__*,int,char const*,int ,int ,long,int,size_t*) ;
 int stub1 (TYPE_2__*,char const*) ;

int BIO_puts(BIO *b, const char *buf)
{
    int ret;
    size_t written = 0;

    if ((b == ((void*)0)) || (b->method == ((void*)0)) || (b->method->bputs == ((void*)0))) {
        BIOerr(BIO_F_BIO_PUTS, BIO_R_UNSUPPORTED_METHOD);
        return -2;
    }

    if (b->callback != ((void*)0) || b->callback_ex != ((void*)0)) {
        ret = (int)bio_call_callback(b, BIO_CB_PUTS, buf, 0, 0, 0L, 1L, ((void*)0));
        if (ret <= 0)
            return ret;
    }

    if (!b->init) {
        BIOerr(BIO_F_BIO_PUTS, BIO_R_UNINITIALIZED);
        return -2;
    }

    ret = b->method->bputs(b, buf);

    if (ret > 0) {
        b->num_write += (uint64_t)ret;
        written = ret;
        ret = 1;
    }

    if (b->callback != ((void*)0) || b->callback_ex != ((void*)0))
        ret = (int)bio_call_callback(b, BIO_CB_PUTS | BIO_CB_RETURN, buf, 0, 0,
                                     0L, ret, &written);

    if (ret > 0) {
        if (written > INT_MAX) {
            BIOerr(BIO_F_BIO_PUTS, BIO_R_LENGTH_TOO_LONG);
            ret = -1;
        } else {
            ret = (int)written;
        }
    }

    return ret;
}
