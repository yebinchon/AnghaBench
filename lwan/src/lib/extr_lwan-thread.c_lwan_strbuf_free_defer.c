
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_strbuf {int dummy; } ;


 int lwan_strbuf_free (struct lwan_strbuf*) ;

__attribute__((used)) static void lwan_strbuf_free_defer(void *data)
{
    lwan_strbuf_free((struct lwan_strbuf *)data);
}
