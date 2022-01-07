
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ strbuf_t ;


 int heap_free (int ) ;

void strbuf_free(strbuf_t *buf)
{
    heap_free(buf->buf);
}
