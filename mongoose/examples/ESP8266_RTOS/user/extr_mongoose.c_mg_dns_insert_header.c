
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_dns_message {int num_answers; int num_questions; int flags; int transaction_id; } ;
struct mg_dns_header {void* num_answers; void* num_questions; void* flags; int transaction_id; } ;
struct mbuf {int dummy; } ;
typedef int header ;


 void* htons (int ) ;
 int mbuf_insert (struct mbuf*,size_t,struct mg_dns_header*,int) ;
 int memset (struct mg_dns_header*,int ,int) ;

int mg_dns_insert_header(struct mbuf *io, size_t pos,
                         struct mg_dns_message *msg) {
  struct mg_dns_header header;

  memset(&header, 0, sizeof(header));
  header.transaction_id = msg->transaction_id;
  header.flags = htons(msg->flags);
  header.num_questions = htons(msg->num_questions);
  header.num_answers = htons(msg->num_answers);

  return mbuf_insert(io, pos, &header, sizeof(header));
}
