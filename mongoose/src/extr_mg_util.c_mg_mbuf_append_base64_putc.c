
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
typedef int ch ;


 int mbuf_append (struct mbuf*,char*,int) ;

void mg_mbuf_append_base64_putc(char ch, void *user_data) {
  struct mbuf *mbuf = (struct mbuf *) user_data;
  mbuf_append(mbuf, &ch, sizeof(ch));
}
