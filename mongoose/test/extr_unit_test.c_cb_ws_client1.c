
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct websocket_message {int data; scalar_t__ size; int flags; } ;
struct mg_connection {scalar_t__ user_data; } ;
struct mbuf {int dummy; } ;


 int MG_EV_CLOSE ;
 int MG_EV_WEBSOCKET_CONTROL_FRAME ;
 int MG_EV_WEBSOCKET_FRAME ;
 int MG_EV_WEBSOCKET_HANDSHAKE_DONE ;
 int free (char*) ;
 int mbuf_append (struct mbuf*,char*,int) ;
 int mg_asprintf (char**,int ,char*,char*,int ,int,int ) ;
 int s_ws_client1_connected ;

__attribute__((used)) static void cb_ws_client1(struct mg_connection *nc, int ev, void *ev_data) {
  struct websocket_message *wm = (struct websocket_message *) ev_data;

  if (ev == MG_EV_WEBSOCKET_FRAME || ev == MG_EV_WEBSOCKET_CONTROL_FRAME) {
    char *tmp = ((void*)0);
    int tmplen;
    tmplen =
        mg_asprintf(&tmp, 0, "%s%.2x:[%.*s]",
                    (ev == MG_EV_WEBSOCKET_CONTROL_FRAME ? "CONTROL:" : ""),
                    wm->flags, (int) wm->size, wm->data);
    mbuf_append((struct mbuf *) nc->user_data, tmp, tmplen);
    free(tmp);
  } else if (ev == MG_EV_CLOSE) {
    s_ws_client1_connected = 0;
  } else if (ev == MG_EV_WEBSOCKET_HANDSHAKE_DONE) {
    s_ws_client1_connected = 1;
  }
}
