
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pkt_scr {int n; int member_2; int * member_1; TYPE_2__* member_0; } ;
typedef int coap_rw_buffer_t ;
typedef int coap_parse_iterator_t ;
struct TYPE_5__ {int numopts; TYPE_1__* opts; } ;
typedef TYPE_2__ coap_packet_t ;
struct TYPE_4__ {int num; } ;


 int COAP_OPTION_URI_PATH ;
 int coap_parse_iterator_init (unsigned char*,size_t,char,unsigned char*,int,int *) ;
 int coap_split_path_impl (int *,int ,struct pkt_scr*) ;
 int write_option ;

int coap_split_path(coap_rw_buffer_t *scratch, coap_packet_t *pkt, const unsigned char *s, size_t length) {
  struct pkt_scr tmp = { pkt, scratch, 0 };
  coap_parse_iterator_t pi;

  coap_parse_iterator_init((unsigned char *)s, length,
         '/', (unsigned char *)"?#", 2, &pi);
  coap_split_path_impl(&pi, write_option, &tmp);

  int i;
  for(i=0;i<tmp.n;i++){
    pkt->opts[pkt->numopts - i - 1].num = COAP_OPTION_URI_PATH;
  }

  return tmp.n;
}
