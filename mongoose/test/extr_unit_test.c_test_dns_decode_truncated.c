
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {scalar_t__ s_addr; } ;
typedef struct in_addr uint16_t ;
typedef int tiny ;
struct mg_dns_resource_record {int rtype; int name; int rdata; } ;
struct mg_dns_message {int num_questions; int num_answers; struct mg_dns_resource_record* answers; struct mg_dns_resource_record* questions; } ;
typedef int src ;
typedef int name ;
typedef int ina ;


 int ASSERT (int ) ;
 int MG_DNS_A_RECORD ;
 int MG_DNS_CNAME_RECORD ;
 int WONDER (int) ;
 int free (char*) ;
 scalar_t__ inet_addr (char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,unsigned char const*,int) ;
 struct mg_dns_resource_record* mg_dns_next_record (struct mg_dns_message*,int ,struct mg_dns_resource_record*) ;
 int mg_dns_parse_record_data (struct mg_dns_message*,struct mg_dns_resource_record*,struct in_addr*,int) ;
 scalar_t__ mg_dns_uncompress_name (struct mg_dns_message*,int *,char*,int) ;
 scalar_t__ mg_parse_dns (char const*,int,struct mg_dns_message*) ;
 int printf (char*,void*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,scalar_t__) ;

__attribute__((used)) static const char *test_dns_decode_truncated(void) {
  struct mg_dns_message msg;
  char name[256];
  const char *hostname = "go.cesanta.com";
  const char *cname = "ghs.googlehosted.com";
  struct mg_dns_resource_record *r;
  uint16_t tiny;
  struct in_addr ina;
  int n;
  int i;

  const unsigned char src[] = {
      0xa1, 0x00, 0x81, 0x80, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
      0x02, 0x67, 0x6f, 0x07, 0x63, 0x65, 0x73, 0x61, 0x6e, 0x74, 0x61, 0x03,
      0x63, 0x6f, 0x6d, 0x00, 0x00, 0x01, 0x00, 0x01, 0xc0, 0x0c, 0x00, 0x05,
      0x00, 0x01, 0x00, 0x00, 0x09, 0x52, 0x00, 0x13, 0x03, 0x67, 0x68, 0x73,
      0x0c, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x68, 0x6f, 0x73, 0x74, 0x65,
      0x64, 0xc0, 0x17, 0xc0, 0x2c, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x01,
      0x2b, 0x00, 0x04, 0x4a, 0x7d, 0x88, 0x79};
  char *pkt = ((void*)0);




  for (i = sizeof(src) - 1; i > 0; i--) {
    free(pkt);
    pkt = (char *) malloc(i);
    memcpy(pkt, src, i);

    if (!(mg_parse_dns((const char *) pkt, i, &msg) == 0)) continue;
    if (!(msg.num_questions == 1)) continue;
    if (!(msg.num_answers == 2)) continue;

    r = &msg.questions[0];
    if (!(mg_dns_uncompress_name(&msg, &r->name, name, sizeof(name)) == strlen(hostname))) continue;

    if (!(strncmp(name, hostname, strlen(hostname)) == 0)) continue;

    r = &msg.answers[0];
    if (!(mg_dns_uncompress_name(&msg, &r->name, name, sizeof(name)) == strlen(hostname))) continue;

    if (!(strncmp(name, hostname, strlen(hostname)) == 0)) continue;

    if (!(mg_dns_uncompress_name(&msg, &r->rdata, name, sizeof(name)) == strlen(cname))) continue;

    if (!(strncmp(name, cname, strlen(cname)) == 0)) continue;

    r = &msg.answers[1];
    if (!(mg_dns_uncompress_name(&msg, &r->name, name, sizeof(name)) == strlen(cname))) continue;

    if (!(strncmp(name, cname, strlen(cname)) == 0)) continue;
    if (!(mg_dns_parse_record_data(&msg, r, &tiny, sizeof(tiny)) == -1)) continue;
    if (!(mg_dns_parse_record_data(&msg, r, &ina, sizeof(ina)) == 0)) continue;
    if (!(ina.s_addr == inet_addr("74.125.136.121"))) continue;


    n = 0;
    r = ((void*)0);
    while ((r = mg_dns_next_record(&msg, MG_DNS_A_RECORD, r))) {
      n++;
    }
    if (!(n == 1)) continue;

    n = 0;
    r = ((void*)0);
    while ((r = mg_dns_next_record(&msg, MG_DNS_CNAME_RECORD, r))) {
      n++;
    }
    if (!(n == 1)) continue;


    r = mg_dns_next_record(&msg, MG_DNS_A_RECORD, r);
    if (!(r != ((void*)0))) continue;
    printf("GOT %p\n", (void *) r);
    r->rtype = 0xff;
    if (!(mg_dns_parse_record_data(&msg, r, &ina, sizeof(ina)) == -1)) continue;

    ASSERT("Should have failed" == ((void*)0));
  }
  free(pkt);
  return ((void*)0);
}
