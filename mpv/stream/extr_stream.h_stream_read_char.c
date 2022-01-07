
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buf_cur; scalar_t__ buf_end; int* buffer; size_t buffer_mask; } ;
typedef TYPE_1__ stream_t ;


 int stream_read_char_fallback (TYPE_1__*) ;

__attribute__((used)) inline static int stream_read_char(stream_t *s)
{
    return s->buf_cur < s->buf_end
        ? s->buffer[(s->buf_cur++) & s->buffer_mask]
        : stream_read_char_fallback(s);
}
