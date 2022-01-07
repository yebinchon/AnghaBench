
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_source {size_t cap; size_t off; size_t buf; } ;


 int memcpy (void*,size_t,size_t) ;

__attribute__((used)) static size_t greedy_reader(void *buf, size_t buflen, void *arg)
{
    struct my_source *s = arg;
    if (buflen > s->cap - s->off)
        buflen = s->cap - s->off;
    if (buflen > 0) {
        memcpy(buf, s->buf + s->off, buflen);
        s->off += buflen;
        return buflen;
    } else {
        return 0;
    }
}
