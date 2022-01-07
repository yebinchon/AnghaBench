
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t len; } ;
struct mg_mqtt_message {TYPE_2__ payload; int topic; } ;
struct TYPE_3__ {char* buf; } ;
struct mg_connection {TYPE_1__ recv_mbuf; scalar_t__ user_data; } ;





 int mg_vcmp (int *,char*) ;
 size_t mqtt_long_payload_len ;
 size_t mqtt_very_long_payload_len ;

__attribute__((used)) static void mqtt_eh(struct mg_connection *nc, int ev, void *ev_data) {
  int *check = (int *) nc->user_data;
  struct mg_mqtt_message *mm = (struct mg_mqtt_message *) ev_data;
  size_t i;
  (void) nc;
  (void) ev_data;

  switch (ev) {
    case 128:
      *check = 1;
      break;
    case 129:
      *check = 0;
      if (mg_vcmp(&mm->topic, "/topic")) {
        *check = -1;
        break;
      }

      for (i = 0; i < mm->payload.len; i++) {
        if (nc->recv_mbuf.buf[10 + i] != 'A') {
          *check = -1;
          break;
        }
      }

      if (mm->payload.len == mqtt_long_payload_len) {
        *check = 2;
      } else if (mm->payload.len == mqtt_very_long_payload_len) {
        *check = 3;
      }
      break;
    case 130:
      *check = 4;
      break;
  }
}
