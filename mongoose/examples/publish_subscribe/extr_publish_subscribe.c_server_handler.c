
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int len; int buf; } ;
struct mg_connection {int flags; int mgr; struct mbuf recv_mbuf; } ;
typedef int addr ;


 int MG_EV_ACCEPT ;
 int MG_EV_RECV ;
 int MG_F_USER_2 ;
 int MG_SOCK_STRINGIFY_IP ;
 int MG_SOCK_STRINGIFY_PORT ;
 int mbuf_remove (struct mbuf*,int ) ;
 struct mg_connection* mg_next (int ,struct mg_connection*) ;
 int mg_send (struct mg_connection*,int ,int ) ;
 int mg_sock_addr_to_str (void*,char*,int,int) ;
 int printf (char*,char*) ;

__attribute__((used)) static void server_handler(struct mg_connection *nc, int ev, void *p) {
  (void) p;
  if (ev == MG_EV_RECV) {

    struct mbuf *io = &nc->recv_mbuf;
    struct mg_connection *c;

    for (c = mg_next(nc->mgr, ((void*)0)); c != ((void*)0); c = mg_next(nc->mgr, c)) {
      if (!(c->flags & MG_F_USER_2)) continue;
      mg_send(c, io->buf, io->len);
    }
    mbuf_remove(io, io->len);
  } else if (ev == MG_EV_ACCEPT) {
    char addr[32];
    mg_sock_addr_to_str(p, addr, sizeof(addr),
                        MG_SOCK_STRINGIFY_IP | MG_SOCK_STRINGIFY_PORT);
    printf("New client connected from %s\n", addr);
  }
}
