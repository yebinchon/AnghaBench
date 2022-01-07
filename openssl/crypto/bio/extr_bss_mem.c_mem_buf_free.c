
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int flags; int * ptr; scalar_t__ init; scalar_t__ shutdown; } ;
struct TYPE_7__ {TYPE_1__* buf; } ;
struct TYPE_6__ {int * data; } ;
typedef TYPE_1__ BUF_MEM ;
typedef TYPE_2__ BIO_BUF_MEM ;
typedef TYPE_3__ BIO ;


 int BIO_FLAGS_MEM_RDONLY ;
 int BUF_MEM_free (TYPE_1__*) ;

__attribute__((used)) static int mem_buf_free(BIO *a)
{
    if (a == ((void*)0))
        return 0;

    if (a->shutdown && a->init && a->ptr != ((void*)0)) {
        BIO_BUF_MEM *bb = (BIO_BUF_MEM *)a->ptr;
        BUF_MEM *b = bb->buf;

        if (a->flags & BIO_FLAGS_MEM_RDONLY)
            b->data = ((void*)0);
        BUF_MEM_free(b);
    }
    return 1;
}
