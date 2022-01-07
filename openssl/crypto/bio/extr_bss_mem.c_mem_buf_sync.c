
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ init; int * ptr; } ;
struct TYPE_8__ {TYPE_2__* buf; TYPE_1__* readp; } ;
struct TYPE_7__ {scalar_t__ data; int length; } ;
struct TYPE_6__ {scalar_t__ data; int length; } ;
typedef TYPE_3__ BIO_BUF_MEM ;
typedef TYPE_4__ BIO ;


 int memmove (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int mem_buf_sync(BIO *b)
{
    if (b != ((void*)0) && b->init != 0 && b->ptr != ((void*)0)) {
        BIO_BUF_MEM *bbm = (BIO_BUF_MEM *)b->ptr;

        if (bbm->readp->data != bbm->buf->data) {
            memmove(bbm->buf->data, bbm->readp->data, bbm->readp->length);
            bbm->buf->length = bbm->readp->length;
            bbm->readp->data = bbm->buf->data;
        }
    }
    return 0;
}
