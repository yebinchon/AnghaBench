
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* fill_buffer ) (TYPE_1__*,void*,int) ;int eof; int pos; int total_unbuffered_read_bytes; int cancel; } ;
typedef TYPE_1__ stream_t ;


 int assert (int) ;
 int mp_cancel_test (int ) ;
 int stub1 (TYPE_1__*,void*,int) ;

__attribute__((used)) static int stream_read_unbuffered(stream_t *s, void *buf, int len)
{
    assert(len >= 0);
    if (len <= 0)
        return 0;

    int res = 0;

    if (s->fill_buffer && !mp_cancel_test(s->cancel))
        res = s->fill_buffer(s, buf, len);
    if (res <= 0) {
        s->eof = 1;
        return 0;
    }

    s->eof = 0;
    s->pos += res;
    s->total_unbuffered_read_bytes += res;
    return res;
}
