
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sin_port; int sin_addr; } ;
struct TYPE_3__ {TYPE_2__ sin; } ;
struct mbuf {scalar_t__ len; int buf; } ;
struct mg_connection {int flags; TYPE_1__ sa; struct mbuf recv_mbuf; } ;




 int MG_F_SEND_AND_CLOSE ;
 char* inet_ntoa (int ) ;
 int mbuf_remove (struct mbuf*,scalar_t__) ;
 int ntohs (int ) ;
 int printf (char*,char const*,int,...) ;

__attribute__((used)) static void ev_handler(struct mg_connection *nc, int ev, void *p) {
  struct mbuf *io = &nc->recv_mbuf;
  (void) p;
  switch (ev) {
    case 129: {
      const char *peer;
      peer = inet_ntoa(nc->sa.sin.sin_addr);
      printf("nc->sa: %s %d\n", peer, ntohs(nc->sa.sin.sin_port));

      break;
    }
    case 128:
      printf("Received (%zu bytes): '%.*s'\n", io->len, (int) io->len, io->buf);
      mbuf_remove(io, io->len);
      nc->flags |= MG_F_SEND_AND_CLOSE;
      break;
    default:
      break;
  }
}
