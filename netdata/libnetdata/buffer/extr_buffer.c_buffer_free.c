
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* buffer; int size; } ;
typedef TYPE_1__ BUFFER ;


 int D_WEB_BUFFER ;
 int buffer_overflow_check (TYPE_1__*) ;
 int debug (int ,char*,int ) ;
 int freez (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

void buffer_free(BUFFER *b) {
    if(unlikely(!b)) return;

    buffer_overflow_check(b);

    debug(D_WEB_BUFFER, "Freeing web buffer of size %zu.", b->size);

    freez(b->buffer);
    freez(b);
}
