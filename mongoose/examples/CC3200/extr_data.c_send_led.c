
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;


 int WEBSOCKET_OP_TEXT ;
 int mg_printf_websocket_frame (struct mg_connection*,int ,char*,double,unsigned char) ;

__attribute__((used)) static void send_led(struct mg_connection *nc, double ts, unsigned char led) {
  if (ts == 0) return;
  mg_printf_websocket_frame(nc, WEBSOCKET_OP_TEXT,
                            "{\"t\": 1, \"ts\": %lf, \"v\": %d}", ts, led);
}
