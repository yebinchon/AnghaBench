
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_tpl {int minimum_size; } ;
struct lwan_strbuf {int dummy; } ;


 scalar_t__ LIKELY (int ) ;
 scalar_t__ UNLIKELY (int) ;
 int lwan_strbuf_free (struct lwan_strbuf*) ;
 struct lwan_strbuf* lwan_strbuf_new_with_size (int ) ;
 int lwan_tpl_apply_with_buffer (struct lwan_tpl*,struct lwan_strbuf*,void*) ;

struct lwan_strbuf *lwan_tpl_apply(struct lwan_tpl *tpl, void *variables)
{
    struct lwan_strbuf *buf = lwan_strbuf_new_with_size(tpl->minimum_size);

    if (UNLIKELY(!buf))
        return ((void*)0);

    if (LIKELY(lwan_tpl_apply_with_buffer(tpl, buf, variables)))
        return buf;

    lwan_strbuf_free(buf);
    return ((void*)0);
}
