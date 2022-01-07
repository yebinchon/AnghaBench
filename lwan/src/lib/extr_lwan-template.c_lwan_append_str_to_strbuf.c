
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_strbuf {int dummy; } ;


 scalar_t__ LIKELY (char const*) ;
 int lwan_strbuf_append_strz (struct lwan_strbuf*,char const*) ;

void lwan_append_str_to_strbuf(struct lwan_strbuf *buf, void *ptr)
{
    const char *str = *(char **)ptr;

    if (LIKELY(str))
        lwan_strbuf_append_strz(buf, str);
}
