
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_send_mqtt_handshake_opts {int dummy; } ;
struct mg_connection {int dummy; } ;


 int mg_send_mqtt_handshake_opt (struct mg_connection*,char const*,struct mg_send_mqtt_handshake_opts) ;

void mg_send_mqtt_handshake(struct mg_connection *nc, const char *client_id) {
  static struct mg_send_mqtt_handshake_opts opts;
  mg_send_mqtt_handshake_opt(nc, client_id, opts);
}
