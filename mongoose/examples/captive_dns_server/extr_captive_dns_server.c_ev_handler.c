
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_dns_resource_record {int rtype; int name; } ;
struct mg_dns_reply {int dummy; } ;
struct mg_dns_message {int num_questions; struct mg_dns_resource_record* questions; } ;
struct mg_connection {int flags; } ;
struct mbuf {int dummy; } ;
typedef int rname ;


 int MG_DNS_A_RECORD ;

 int MG_F_SEND_AND_CLOSE ;
 int fprintf (int ,char*,int,char*) ;
 int mbuf_free (struct mbuf*) ;
 int mbuf_init (struct mbuf*,int) ;
 struct mg_dns_reply mg_dns_create_reply (struct mbuf*,struct mg_dns_message*) ;
 int mg_dns_reply_record (struct mg_dns_reply*,struct mg_dns_resource_record*,int *,int,int,int *,int) ;
 int mg_dns_send_reply (struct mg_connection*,struct mg_dns_reply*) ;
 int mg_dns_uncompress_name (struct mg_dns_message*,int *,char*,int) ;
 int s_our_ip_addr ;
 int stdout ;

__attribute__((used)) static void ev_handler(struct mg_connection *nc, int ev, void *ev_data) {
  struct mg_dns_message *msg;
  struct mg_dns_resource_record *rr;
  struct mg_dns_reply reply;
  int i;

  switch (ev) {
    case 128: {
      struct mbuf reply_buf;
      mbuf_init(&reply_buf, 512);
      msg = (struct mg_dns_message *) ev_data;
      reply = mg_dns_create_reply(&reply_buf, msg);

      for (i = 0; i < msg->num_questions; i++) {
        char rname[256];
        rr = &msg->questions[i];
        mg_dns_uncompress_name(msg, &rr->name, rname, sizeof(rname) - 1);
        fprintf(stdout, "Q type %d name %s\n", rr->rtype, rname);
        if (rr->rtype == MG_DNS_A_RECORD) {
          mg_dns_reply_record(&reply, rr, ((void*)0), rr->rtype, 10, &s_our_ip_addr,
                              4);
        }
      }
      mg_dns_send_reply(nc, &reply);
      nc->flags |= MG_F_SEND_AND_CLOSE;
      mbuf_free(&reply_buf);
      break;
    }
  }
}
