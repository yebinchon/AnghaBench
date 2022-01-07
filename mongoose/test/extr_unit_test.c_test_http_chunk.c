
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; int len; } ;
struct mg_connection {TYPE_1__ send_mbuf; } ;


 int ASSERT_EQ (int ,int) ;
 int init_test_connection (struct mg_connection*) ;
 int mbuf_free (TYPE_1__*) ;
 int memcmp (int ,char*,int) ;
 int mg_printf_http_chunk (struct mg_connection*,char*,int,char*) ;
 int mg_send_http_chunk (struct mg_connection*,char*,int ) ;

__attribute__((used)) static const char *test_http_chunk(void) {
  struct mg_connection nc;
  init_test_connection(&nc);

  mg_printf_http_chunk(&nc, "%d %s", 123, ":-)");
  ASSERT_EQ(nc.send_mbuf.len, 12);
  ASSERT_EQ(memcmp(nc.send_mbuf.buf, "7\r\n123 :-)\r\n", 12), 0);
  mbuf_free(&nc.send_mbuf);

  mg_send_http_chunk(&nc, "", 0);
  ASSERT_EQ(nc.send_mbuf.len, 5);
  ASSERT_EQ(memcmp(nc.send_mbuf.buf, "0\r\n\r\n", 3), 0);
  mbuf_free(&nc.send_mbuf);

  return ((void*)0);
}
