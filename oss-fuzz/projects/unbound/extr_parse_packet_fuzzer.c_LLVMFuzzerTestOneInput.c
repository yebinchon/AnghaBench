
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct msg_parse {int dummy; } ;
typedef int sldns_buffer ;
typedef int prs ;


 int abort () ;
 int memset (struct msg_parse*,int ,int) ;
 int parse_packet (int *,struct msg_parse*,scalar_t__) ;
 scalar_t__ region ;
 scalar_t__ regional_create () ;
 int sldns_buffer_init_frm_data (int *,void*,size_t) ;

int LLVMFuzzerTestOneInput(const uint8_t *buf, size_t len)
{
 if (!region) {
  region = regional_create();
  if (!region) {
   abort();
  }
}
 sldns_buffer pktbuf;
 sldns_buffer_init_frm_data(&pktbuf, (void*)buf, len);

 struct msg_parse prs;
 memset(&prs, 0, sizeof(prs));
 parse_packet(&pktbuf, &prs, region);
 return 0;
}
