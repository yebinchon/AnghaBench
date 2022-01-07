
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int len; int buf; } ;
struct mg_connection {int flags; scalar_t__ user_data; int * listener; struct mbuf recv_mbuf; } ;


 int DBG (char*) ;


 int MG_F_CLOSE_IMMEDIATELY ;
 int mbuf_remove (struct mbuf*,int) ;
 int memcmp (int ,char*,int) ;
 int mg_printf (struct mg_connection*,char*,int,...) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void eh1(struct mg_connection *nc, int ev, void *ev_data) {
  struct mbuf *io = &nc->recv_mbuf;

  switch (ev) {
    case 129: {
      int res = *((int *) ev_data);
      if (res == 0) {
        mg_printf(nc, "%d %s there", *(int *) ev_data, "hi");
      } else {
        sprintf((char *) nc->user_data, "connect failed! %d", res);
      }
      break;
    }
    case 128: {
      if (nc->listener != ((void*)0)) {
        mg_printf(nc, "%d", (int) io->len);
        mbuf_remove(io, io->len);
      } else if (io->len > 0) {
        sprintf((char *) nc->user_data, "%sok!",
                (io->len == 2 && memcmp(io->buf, "10", 2) == 0) ? "" : "NOT ");
        DBG(("%s", (const char *) nc->user_data));
        nc->flags |= MG_F_CLOSE_IMMEDIATELY;
      }
      break;
    }
    default:
      break;
  }
}
