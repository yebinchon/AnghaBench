
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t free; size_t size; int * buf; int * buf_pos; } ;
typedef TYPE_1__ _store_wbuf ;


 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int * malloc (size_t) ;

__attribute__((used)) static _store_wbuf *wbuf_new(size_t size) {
    _store_wbuf *b = calloc(1, sizeof(_store_wbuf));
    if (b == ((void*)0))
        return ((void*)0);
    b->buf = malloc(size);
    if (b->buf == ((void*)0)) {
        free(b);
        return ((void*)0);
    }
    b->buf_pos = b->buf;
    b->free = size;
    b->size = size;
    return b;
}
