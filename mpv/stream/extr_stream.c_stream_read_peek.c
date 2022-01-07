
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buf_cur; } ;
typedef TYPE_1__ stream_t ;


 int ring_copy (TYPE_1__*,void*,int,int ) ;
 scalar_t__ stream_read_more (TYPE_1__*,int) ;

int stream_read_peek(stream_t *s, void *buf, int buf_size)
{
    while (stream_read_more(s, buf_size)) {}
    return ring_copy(s, buf, buf_size, s->buf_cur);
}
