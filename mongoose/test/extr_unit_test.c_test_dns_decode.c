
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
typedef struct in_addr uint16_t ;
typedef int tiny ;
struct mg_dns_resource_record {int rtype; int name; int rdata; } ;
struct mg_dns_message {int num_questions; int num_answers; struct mg_dns_resource_record* answers; struct mg_dns_resource_record* questions; } ;
typedef int pkt ;
typedef int name ;
typedef int ina ;


 int ASSERT_EQ (int,int) ;
 int MG_DNS_A_RECORD ;
 int MG_DNS_CNAME_RECORD ;
 int inet_addr (char*) ;
 struct mg_dns_resource_record* mg_dns_next_record (struct mg_dns_message*,int ,struct mg_dns_resource_record*) ;
 int mg_dns_parse_record_data (struct mg_dns_message*,struct mg_dns_resource_record*,struct in_addr*,int) ;
 int mg_dns_uncompress_name (struct mg_dns_message*,int *,char*,int) ;
 int mg_parse_dns (char const*,int,struct mg_dns_message*) ;
 int strlen (char const*) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static const char *test_dns_decode(void) {
  struct mg_dns_message msg;
  char name[256];
  const char *hostname = "go.cesanta.com";
  const char *cname = "ghs.googlehosted.com";
  struct mg_dns_resource_record *r;
  uint16_t tiny;
  struct in_addr ina;
  int n;
  const unsigned char pkt[] = {
      0xa1, 0x00, 0x81, 0x80, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
      0x02, 0x67, 0x6f, 0x07, 0x63, 0x65, 0x73, 0x61, 0x6e, 0x74, 0x61, 0x03,
      0x63, 0x6f, 0x6d, 0x00, 0x00, 0x01, 0x00, 0x01, 0xc0, 0x0c, 0x00, 0x05,
      0x00, 0x01, 0x00, 0x00, 0x09, 0x52, 0x00, 0x13, 0x03, 0x67, 0x68, 0x73,
      0x0c, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x68, 0x6f, 0x73, 0x74, 0x65,
      0x64, 0xc0, 0x17, 0xc0, 0x2c, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x01,
      0x2b, 0x00, 0x04, 0x4a, 0x7d, 0x88, 0x79};

  ASSERT_EQ(mg_parse_dns((const char *) pkt, sizeof(pkt), &msg), 0);
  ASSERT_EQ(msg.num_questions, 1);
  ASSERT_EQ(msg.num_answers, 2);

  r = &msg.questions[0];
  ASSERT_EQ(mg_dns_uncompress_name(&msg, &r->name, name, sizeof(name)),
            strlen(hostname));
  ASSERT_EQ(strncmp(name, hostname, strlen(hostname)), 0);

  r = &msg.answers[0];
  ASSERT_EQ(mg_dns_uncompress_name(&msg, &r->name, name, sizeof(name)),
            strlen(hostname));
  ASSERT_EQ(strncmp(name, hostname, strlen(hostname)), 0);

  ASSERT_EQ(mg_dns_uncompress_name(&msg, &r->rdata, name, sizeof(name)),
            strlen(cname));
  ASSERT_EQ(strncmp(name, cname, strlen(cname)), 0);

  r = &msg.answers[1];
  ASSERT_EQ(mg_dns_uncompress_name(&msg, &r->name, name, sizeof(name)),
            strlen(cname));
  ASSERT_EQ(strncmp(name, cname, strlen(cname)), 0);
  ASSERT_EQ(mg_dns_parse_record_data(&msg, r, &tiny, sizeof(tiny)), -1);
  ASSERT_EQ(mg_dns_parse_record_data(&msg, r, &ina, sizeof(ina)), 0);
  ASSERT_EQ(ina.s_addr, inet_addr("74.125.136.121"));


  n = 0;
  r = ((void*)0);
  while ((r = mg_dns_next_record(&msg, MG_DNS_A_RECORD, r))) {
    n++;
  }
  ASSERT_EQ(n, 1);

  n = 0;
  r = ((void*)0);
  while ((r = mg_dns_next_record(&msg, MG_DNS_CNAME_RECORD, r))) {
    n++;
  }
  ASSERT_EQ(n, 1);


  r = mg_dns_next_record(&msg, MG_DNS_A_RECORD, r);
  r->rtype = 0xff;
  ASSERT_EQ(mg_dns_parse_record_data(&msg, r, &ina, sizeof(ina)), -1);

  return ((void*)0);
}
