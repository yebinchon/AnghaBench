
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int flags; int sock; int mgr; int iface; int recv_mbuf_limit; int user_data; int proto_handler; struct mg_connection* listener; int handler; } ;
struct mg_add_sock_opts {int dummy; } ;
typedef int opts ;


 int LL_DEBUG ;
 int LOG (int ,char*) ;
 int MG_F_SSL ;
 int memset (struct mg_add_sock_opts*,int ,int) ;
 int mg_add_conn (int ,struct mg_connection*) ;
 struct mg_connection* mg_create_connection (int ,int ,struct mg_add_sock_opts) ;

struct mg_connection *mg_if_accept_new_conn(struct mg_connection *lc) {
  struct mg_add_sock_opts opts;
  struct mg_connection *nc;
  memset(&opts, 0, sizeof(opts));
  nc = mg_create_connection(lc->mgr, lc->handler, opts);
  if (nc == ((void*)0)) return ((void*)0);
  nc->listener = lc;
  nc->proto_handler = lc->proto_handler;
  nc->user_data = lc->user_data;
  nc->recv_mbuf_limit = lc->recv_mbuf_limit;
  nc->iface = lc->iface;
  if (lc->flags & MG_F_SSL) nc->flags |= MG_F_SSL;
  mg_add_conn(nc->mgr, nc);
  LOG(LL_DEBUG, ("%p %p %d %d", lc, nc, nc->sock, (int) nc->flags));
  return nc;
}
