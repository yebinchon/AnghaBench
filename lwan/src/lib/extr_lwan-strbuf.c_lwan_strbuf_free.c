
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct lwan_strbuf* buffer; } ;
struct lwan_strbuf {int flags; TYPE_1__ value; } ;


 int DYNAMICALLY_ALLOCATED ;
 int STATIC ;
 scalar_t__ UNLIKELY (int) ;
 int free (struct lwan_strbuf*) ;

void lwan_strbuf_free(struct lwan_strbuf *s)
{
    if (UNLIKELY(!s))
        return;
    if (!(s->flags & STATIC))
        free(s->value.buffer);
    if (s->flags & DYNAMICALLY_ALLOCATED)
        free(s);
}
