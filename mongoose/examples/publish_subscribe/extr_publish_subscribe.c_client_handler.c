
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int len; int buf; } ;
struct mg_connection {int flags; scalar_t__ user_data; struct mbuf recv_mbuf; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int MG_EV_CLOSE ;
 int MG_EV_CONNECT ;
 int MG_EV_RECV ;
 int MG_F_CLOSE_IMMEDIATELY ;
 int MG_F_USER_1 ;
 int exit (int ) ;
 int fwrite (int ,int ,int,int ) ;
 int mbuf_remove (struct mbuf*,int ) ;
 int mg_send (struct mg_connection*,int ,int ) ;
 int printf (char*,char*) ;
 int stdout ;

__attribute__((used)) static void client_handler(struct mg_connection *conn, int ev, void *p) {
  struct mbuf *io = &conn->recv_mbuf;
  (void) p;

  if (ev == MG_EV_CONNECT) {
    if (conn->flags & MG_F_CLOSE_IMMEDIATELY) {
      printf("%s\n", "Error connecting to server!");
      exit(EXIT_FAILURE);
    }
    printf("%s\n", "Connected to server. Type a message and press enter.");
  } else if (ev == MG_EV_RECV) {
    if (conn->flags & MG_F_USER_1) {

      struct mg_connection *c = (struct mg_connection *) conn->user_data;
      mg_send(c, io->buf, io->len);
      mbuf_remove(io, io->len);
    } else {

      fwrite(io->buf, io->len, 1, stdout);
      mbuf_remove(io, io->len);
    }
  } else if (ev == MG_EV_CLOSE) {

    exit(EXIT_SUCCESS);
  }
}
