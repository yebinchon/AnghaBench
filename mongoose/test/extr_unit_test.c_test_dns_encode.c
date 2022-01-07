
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* buf; char const len; } ;
struct mg_connection {TYPE_1__ send_mbuf; } ;


 size_t ARRAY_SIZE (int*) ;
 int ASSERT_EQ (char const,int) ;
 int ASSERT_STREQ_NZ (char const*,char*) ;
 int MG_DNS_AAAA_RECORD ;
 int MG_DNS_A_RECORD ;
 int init_test_connection (struct mg_connection*) ;
 int mbuf_free (TYPE_1__*) ;
 int mg_send_dns_query (struct mg_connection*,char*,int) ;

__attribute__((used)) static const char *test_dns_encode(void) {
  struct mg_connection nc;
  const char *got;
  int query_types[] = {MG_DNS_A_RECORD, MG_DNS_AAAA_RECORD};
  size_t i;
  init_test_connection(&nc);






  for (i = 0; i < ARRAY_SIZE(query_types); i++) {
    mg_send_dns_query(&nc, "www.cesanta.com", query_types[i]);
    got = nc.send_mbuf.buf;
    ASSERT_EQ(nc.send_mbuf.len, 12 + 4 + 13 + 4 + 2);
    ASSERT_EQ(got[14], 3);
    ASSERT_STREQ_NZ(&got[15], "www");
    ASSERT_EQ(got[18], 7);
    ASSERT_STREQ_NZ(&got[19], "cesanta");
    ASSERT_EQ(got[26], 3);
    ASSERT_STREQ_NZ(&got[27], "com");
    ASSERT_EQ(got[30], 0);
    ASSERT_EQ(got[31], 0);
    ASSERT_EQ(got[32], query_types[i]);
    ASSERT_EQ(got[33], 0);
    ASSERT_EQ(got[34], 1);

    mbuf_free(&nc.send_mbuf);
  }
  return ((void*)0);
}
