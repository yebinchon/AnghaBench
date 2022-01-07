
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ eof; scalar_t__ buf_end; scalar_t__ buf_cur; scalar_t__ buf_start; int pos; } ;
typedef TYPE_1__ stream_t ;


 int stream_resize_buffer (TYPE_1__*,int ) ;
 int stream_tell (TYPE_1__*) ;

void stream_drop_buffers(stream_t *s)
{
    s->pos = stream_tell(s);
    s->buf_start = s->buf_cur = s->buf_end = 0;
    s->eof = 0;
    stream_resize_buffer(s, 0);
}
