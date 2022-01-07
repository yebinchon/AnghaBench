
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct websocket_message {int size; int data; } ;
struct TYPE_2__ {int len; int buf; } ;
struct mg_connection {TYPE_1__ recv_mbuf; int mgr; } ;







 int fwrite (int ,int,int ,int ) ;
 int mbuf_remove (TYPE_1__*,int ) ;
 int mg_start_thread (int ,int ) ;
 int s_is_websocket ;
 int s_received_signal ;
 int stdio_thread_func ;
 int stdout ;

__attribute__((used)) static void ev_handler(struct mg_connection *nc, int ev, void *p) {
  switch (ev) {
    case 132:
    case 130:
      mg_start_thread(stdio_thread_func, nc->mgr);
      break;

    case 128: {
      struct websocket_message *wm = (struct websocket_message *) p;
      fwrite(wm->data, 1, wm->size, stdout);
      break;
    }

    case 131:
      s_received_signal = 1;
      break;

    case 129:
      if (!s_is_websocket) {
        fwrite(nc->recv_mbuf.buf, 1, nc->recv_mbuf.len, stdout);
        mbuf_remove(&nc->recv_mbuf, nc->recv_mbuf.len);
      }
      break;

    default:
      break;
  }
}
