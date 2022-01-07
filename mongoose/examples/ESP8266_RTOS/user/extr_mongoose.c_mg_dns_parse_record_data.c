
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int p; } ;
struct mg_dns_resource_record {int rtype; TYPE_2__ rdata; } ;
struct TYPE_3__ {scalar_t__ len; scalar_t__ p; } ;
struct mg_dns_message {TYPE_1__ pkt; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;





 int memcpy (void*,int ,size_t) ;
 int mg_dns_uncompress_name (struct mg_dns_message*,TYPE_2__*,char*,size_t) ;

int mg_dns_parse_record_data(struct mg_dns_message *msg,
                             struct mg_dns_resource_record *rr, void *data,
                             size_t data_len) {
  switch (rr->rtype) {
    case 129:
      if (data_len < sizeof(struct in_addr)) {
        return -1;
      }
      if (rr->rdata.p + data_len > msg->pkt.p + msg->pkt.len) {
        return -1;
      }
      memcpy(data, rr->rdata.p, data_len);
      return 0;
    case 128:
      mg_dns_uncompress_name(msg, &rr->rdata, (char *) data, data_len);
      return 0;
  }

  return -1;
}
