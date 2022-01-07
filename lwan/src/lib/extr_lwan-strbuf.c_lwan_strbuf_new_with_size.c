
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_strbuf {int flags; } ;


 int DYNAMICALLY_ALLOCATED ;
 scalar_t__ UNLIKELY (int) ;
 int free (struct lwan_strbuf*) ;
 int lwan_strbuf_init_with_size (struct lwan_strbuf*,size_t) ;
 struct lwan_strbuf* malloc (int) ;

struct lwan_strbuf *lwan_strbuf_new_with_size(size_t size)
{
    struct lwan_strbuf *s = malloc(sizeof(*s));

    if (UNLIKELY(!lwan_strbuf_init_with_size(s, size))) {
        free(s);

        return ((void*)0);
    }

    s->flags |= DYNAMICALLY_ALLOCATED;

    return s;
}
