
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;
struct bm222_sample {scalar_t__ ts; int z; int y; int x; } ;


 int WEBSOCKET_OP_TEXT ;
 int mg_printf_websocket_frame (struct mg_connection*,int ,char*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void send_acc_sample(struct mg_connection *nc,
                            const struct bm222_sample *s) {
  if (s->ts == 0) return;
  mg_printf_websocket_frame(
      nc, WEBSOCKET_OP_TEXT,
      "{\"t\": 2, \"ts\": %lf, \"x\": %d, \"y\": %d, \"z\": %d}", s->ts, s->x,
      s->y, s->z);
}
