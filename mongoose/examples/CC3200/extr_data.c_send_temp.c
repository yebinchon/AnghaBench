
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temp_data {scalar_t__ ts; int temp; int volt; } ;
struct mg_connection {int dummy; } ;


 int WEBSOCKET_OP_TEXT ;
 int mg_printf_websocket_frame (struct mg_connection*,int ,char*,scalar_t__,int ,int ) ;

__attribute__((used)) static void send_temp(struct mg_connection *nc, const struct temp_data *td) {
  if (td->ts == 0) return;
  mg_printf_websocket_frame(nc, WEBSOCKET_OP_TEXT,
                            "{\"t\": 0, \"ts\": %lf, \"sv\": %lf, \"dt\": %lf}",
                            td->ts, td->volt, td->temp);
}
