
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_sink {size_t cap; size_t off; size_t buf; } ;


 int memcpy (size_t,char const*,size_t) ;

__attribute__((used)) static int my_writer(const char *buffer, size_t len, void *data) {
    struct my_sink *s = data;
    if (len > s->cap - s->off) {
        return -1;
    }
    memcpy(s->buf + s->off, buffer, len);
    s->off += len;
    return 0;
}
