
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mg_connection {int dummy; } ;
struct mg_coap_message {int msg_id; } ;






 int mg_coap_send_ack (struct mg_connection*,int) ;
 int printf (char*,int) ;

__attribute__((used)) static void coap_handler(struct mg_connection *nc, int ev, void *p) {
  switch (ev) {
    case 130: {
      uint32_t res;
      struct mg_coap_message *cm = (struct mg_coap_message *) p;
      printf("CON with msg_id = %d received\n", cm->msg_id);
      res = mg_coap_send_ack(nc, cm->msg_id);
      if (res == 0) {
        printf("Successfully sent ACK for message with msg_id = %d\n",
               cm->msg_id);
      } else {
        printf("Error: %d\n", res);
      }
      break;
    }
    case 129:
    case 131:
    case 128: {
      struct mg_coap_message *cm = (struct mg_coap_message *) p;
      printf("ACK/RST/NOC with msg_id = %d received\n", cm->msg_id);
      break;
    }
  }
}
