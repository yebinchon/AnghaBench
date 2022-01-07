
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_strbuf {int dummy; } ;
typedef int int16_t ;


 int lwan_strbuf_append_char (struct lwan_strbuf*,int) ;

__attribute__((used)) static void write_num(struct lwan_strbuf *buf, int16_t num)
{
    lwan_strbuf_append_char(buf, num & 0xff);
    lwan_strbuf_append_char(buf, num >> 8);
}
