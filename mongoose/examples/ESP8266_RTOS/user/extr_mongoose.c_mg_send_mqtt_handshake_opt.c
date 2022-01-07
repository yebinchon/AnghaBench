
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mg_send_mqtt_handshake_opts {char const* user_name; int flags; char const* password; char const* will_topic; char const* will_message; int keep_alive; } ;
struct mg_mqtt_proto_data {int keep_alive; } ;
struct mg_connection {scalar_t__ proto_data; } ;


 int MG_MQTT_CMD_CONNECT ;
 int MG_MQTT_HAS_PASSWORD ;
 int MG_MQTT_HAS_USER_NAME ;
 int MG_MQTT_HAS_WILL ;
 int htons (int) ;
 int mg_send (struct mg_connection*,...) ;
 int mg_send_mqtt_header (struct mg_connection*,int ,int ,size_t) ;
 int strlen (char const*) ;

void mg_send_mqtt_handshake_opt(struct mg_connection *nc, const char *client_id,
                                struct mg_send_mqtt_handshake_opts opts) {
  struct mg_mqtt_proto_data *pd = (struct mg_mqtt_proto_data *) nc->proto_data;
  uint16_t id_len = 0, wt_len = 0, wm_len = 0, user_len = 0, pw_len = 0;
  uint16_t netbytes;
  size_t total_len;

  if (client_id != ((void*)0)) {
    id_len = strlen(client_id);
  }

  total_len = 7 + 1 + 2 + 2 + id_len;

  if (opts.user_name != ((void*)0)) {
    opts.flags |= MG_MQTT_HAS_USER_NAME;
  }
  if (opts.password != ((void*)0)) {
    opts.flags |= MG_MQTT_HAS_PASSWORD;
  }
  if (opts.will_topic != ((void*)0) && opts.will_message != ((void*)0)) {
    wt_len = strlen(opts.will_topic);
    wm_len = strlen(opts.will_message);
    opts.flags |= MG_MQTT_HAS_WILL;
  }
  if (opts.keep_alive == 0) {
    opts.keep_alive = 60;
  }

  if (opts.flags & MG_MQTT_HAS_WILL) {
    total_len += 2 + wt_len + 2 + wm_len;
  }
  if (opts.flags & MG_MQTT_HAS_USER_NAME) {
    user_len = strlen(opts.user_name);
    total_len += 2 + user_len;
  }
  if (opts.flags & MG_MQTT_HAS_PASSWORD) {
    pw_len = strlen(opts.password);
    total_len += 2 + pw_len;
  }

  mg_send_mqtt_header(nc, MG_MQTT_CMD_CONNECT, 0, total_len);
  mg_send(nc, "\00\04MQTT\04", 7);
  mg_send(nc, &opts.flags, 1);

  netbytes = htons(opts.keep_alive);
  mg_send(nc, &netbytes, 2);

  netbytes = htons(id_len);
  mg_send(nc, &netbytes, 2);
  mg_send(nc, client_id, id_len);

  if (opts.flags & MG_MQTT_HAS_WILL) {
    netbytes = htons(wt_len);
    mg_send(nc, &netbytes, 2);
    mg_send(nc, opts.will_topic, wt_len);

    netbytes = htons(wm_len);
    mg_send(nc, &netbytes, 2);
    mg_send(nc, opts.will_message, wm_len);
  }

  if (opts.flags & MG_MQTT_HAS_USER_NAME) {
    netbytes = htons(user_len);
    mg_send(nc, &netbytes, 2);
    mg_send(nc, opts.user_name, user_len);
  }
  if (opts.flags & MG_MQTT_HAS_PASSWORD) {
    netbytes = htons(pw_len);
    mg_send(nc, &netbytes, 2);
    mg_send(nc, opts.password, pw_len);
  }

  if (pd != ((void*)0)) {
    pd->keep_alive = opts.keep_alive;
  }
}
