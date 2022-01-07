
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* static_buffer; char* buffer; } ;
struct lwan_strbuf {int flags; scalar_t__ used; TYPE_1__ value; } ;


 int STATIC ;

void lwan_strbuf_reset(struct lwan_strbuf *s)
{
    if (s->flags & STATIC) {
        s->value.static_buffer = "";
    } else {
        s->value.buffer[0] = '\0';
    }

    s->used = 0;
}
