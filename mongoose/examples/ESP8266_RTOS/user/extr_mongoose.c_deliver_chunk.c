
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
struct mg_connection {int flags; TYPE_2__ recv_mbuf; int user_data; int handler; } ;
struct TYPE_3__ {int len; } ;
struct http_message {TYPE_1__ body; } ;


 int MG_EV_HTTP_CHUNK ;
 int MG_F_DELETE_CHUNK ;
 int mg_call (struct mg_connection*,int ,int ,int ,struct http_message*) ;

__attribute__((used)) static void deliver_chunk(struct mg_connection *c, struct http_message *hm,
                          int req_len) {

  hm->body.len = c->recv_mbuf.len - req_len;
  c->flags &= ~MG_F_DELETE_CHUNK;
  mg_call(c, c->handler, c->user_data, MG_EV_HTTP_CHUNK, hm);

  if (c->flags & MG_F_DELETE_CHUNK) c->recv_mbuf.len = req_len;
}
