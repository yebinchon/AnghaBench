
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_strbuf {int dummy; } ;


 int lwan_strbuf_append_printf (struct lwan_strbuf*,char*,double) ;

void lwan_append_double_to_strbuf(struct lwan_strbuf *buf, void *ptr)
{
    lwan_strbuf_append_printf(buf, "%f", *(double *)ptr);
}
