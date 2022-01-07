
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mg_dns_resource_record {int rtype; int rclass; int kind; } ;
struct mg_dns_message {int flags; int num_questions; scalar_t__ transaction_id; struct mg_dns_resource_record* questions; } ;
struct mg_connection {int flags; } ;
struct mbuf {scalar_t__ len; int buf; } ;


 int DBG (char*) ;
 scalar_t__ MG_CALLOC (int,int) ;
 int MG_DNS_QUESTION ;
 int MG_FREE (struct mg_dns_message*) ;
 int MG_F_UDP ;
 int htons (int ) ;
 int mbuf_free (struct mbuf*) ;
 int mbuf_init (struct mbuf*,int) ;
 int mbuf_insert (struct mbuf*,int ,int *,int) ;
 int mg_dns_encode_record (struct mbuf*,struct mg_dns_resource_record*,char const*,int ,int *,int ) ;
 int mg_dns_insert_header (struct mbuf*,int ,struct mg_dns_message*) ;
 scalar_t__ mg_dns_tid ;
 int mg_send (struct mg_connection*,int ,scalar_t__) ;
 int strlen (char const*) ;

void mg_send_dns_query(struct mg_connection *nc, const char *name,
                       int query_type) {
  struct mg_dns_message *msg =
      (struct mg_dns_message *) MG_CALLOC(1, sizeof(*msg));
  struct mbuf pkt;
  struct mg_dns_resource_record *rr = &msg->questions[0];

  DBG(("%s %d", name, query_type));

  mbuf_init(&pkt, 64 );

  msg->transaction_id = ++mg_dns_tid;
  msg->flags = 0x100;
  msg->num_questions = 1;

  mg_dns_insert_header(&pkt, 0, msg);

  rr->rtype = query_type;
  rr->rclass = 1;
  rr->kind = MG_DNS_QUESTION;

  if (mg_dns_encode_record(&pkt, rr, name, strlen(name), ((void*)0), 0) == -1) {

    goto cleanup;
  }


  if (!(nc->flags & MG_F_UDP)) {
    uint16_t len = htons((uint16_t) pkt.len);
    mbuf_insert(&pkt, 0, &len, 2);
  }

  mg_send(nc, pkt.buf, pkt.len);
  mbuf_free(&pkt);

cleanup:
  MG_FREE(msg);
}
