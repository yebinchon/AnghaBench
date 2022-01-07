
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct iovec {int iov_len; int iov_base; } ;
struct TYPE_6__ {scalar_t__ written; TYPE_3__* wbuf; } ;
typedef TYPE_1__ store_page ;
struct TYPE_7__ {scalar_t__ offset; int len; int iovcnt; struct iovec* iov; int buf; } ;
typedef TYPE_2__ obj_io ;
struct TYPE_8__ {scalar_t__ size; unsigned int buf; unsigned int offset; } ;
typedef TYPE_3__ _store_wbuf ;


 int assert (int) ;
 int memcpy (int ,unsigned int,int) ;

__attribute__((used)) static inline int _read_from_wbuf(store_page *p, obj_io *io) {
    _store_wbuf *wbuf = p->wbuf;
    assert(wbuf != ((void*)0));
    assert(io->offset < p->written + wbuf->size);
    if (io->iov == ((void*)0)) {
        memcpy(io->buf, wbuf->buf + (io->offset - wbuf->offset), io->len);
    } else {
        int x;
        unsigned int off = io->offset - wbuf->offset;

        for (x = 0; x < io->iovcnt; x++) {
            struct iovec *iov = &io->iov[x];
            memcpy(iov->iov_base, wbuf->buf + off, iov->iov_len);
            off += iov->iov_len;
        }
    }
    return io->len;
}
