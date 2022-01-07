
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size; size_t len; int buffer; } ;
typedef int BUFFER_OVERFLOW_EOF ;
typedef TYPE_1__ BUFFER ;


 int D_WEB_BUFFER ;
 size_t WEB_DATA_LENGTH_INCREASE_STEP ;
 int buffer_overflow_check (TYPE_1__*) ;
 int buffer_overflow_init (TYPE_1__*) ;
 int debug (int ,char*,size_t,size_t) ;
 int reallocz (int ,size_t) ;

void buffer_increase(BUFFER *b, size_t free_size_required) {
    buffer_overflow_check(b);

    size_t left = b->size - b->len;

    if(left >= free_size_required) return;

    size_t increase = free_size_required - left;
    if(increase < WEB_DATA_LENGTH_INCREASE_STEP) increase = WEB_DATA_LENGTH_INCREASE_STEP;

    debug(D_WEB_BUFFER, "Increasing data buffer from size %zu to %zu.", b->size, b->size + increase);

    b->buffer = reallocz(b->buffer, b->size + increase + sizeof(BUFFER_OVERFLOW_EOF) + 2);
    b->size += increase;

    buffer_overflow_init(b);
    buffer_overflow_check(b);
}
