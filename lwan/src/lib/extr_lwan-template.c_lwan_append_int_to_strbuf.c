
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_strbuf {int dummy; } ;


 int INT_TO_STR_BUFFER_SIZE ;
 char* int_to_string (int,char*,size_t*) ;
 int lwan_strbuf_append_str (struct lwan_strbuf*,char*,size_t) ;

void lwan_append_int_to_strbuf(struct lwan_strbuf *buf, void *ptr)
{
    char convertbuf[INT_TO_STR_BUFFER_SIZE];
    size_t len;
    char *converted;

    converted = int_to_string(*(int *)ptr, convertbuf, &len);
    lwan_strbuf_append_str(buf, converted, len);
}
