
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* write_buffer ) (TYPE_1__*,void*,int) ;int pos; } ;
typedef TYPE_1__ stream_t ;


 int stub1 (TYPE_1__*,void*,int) ;

int stream_write_buffer(stream_t *s, void *buf, int len)
{
    if (!s->write_buffer)
        return -1;
    int orig_len = len;
    while (len) {
        int w = s->write_buffer(s, buf, len);
        if (w <= 0)
            return -1;
        s->pos += w;
        buf = (char *)buf + w;
        len -= w;
    }
    return orig_len;
}
