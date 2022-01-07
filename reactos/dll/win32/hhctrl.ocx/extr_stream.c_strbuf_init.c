
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int buf; scalar_t__ len; } ;
typedef TYPE_1__ strbuf_t ;


 int heap_alloc (int) ;

void strbuf_init(strbuf_t *buf)
{
    buf->size = 8;
    buf->len = 0;
    buf->buf = heap_alloc(buf->size);
}
