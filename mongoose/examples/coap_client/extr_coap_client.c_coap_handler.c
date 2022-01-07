
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mg_connection {int flags; } ;
struct mg_coap_message {int msg_id; int msg_type; } ;
typedef int cm ;


 int MG_COAP_MSG_CON ;




 int MG_F_SEND_AND_CLOSE ;
 int memset (struct mg_coap_message*,int ,int) ;
 int mg_coap_send_message (struct mg_connection*,struct mg_coap_message*) ;
 int printf (char*,...) ;
 int s_time_to_exit ;

__attribute__((used)) static void coap_handler(struct mg_connection *nc, int ev, void *p) {
  switch (ev) {
    case 128: {
      struct mg_coap_message cm;
      uint32_t res;

      memset(&cm, 0, sizeof(cm));
      cm.msg_id = 1;
      cm.msg_type = MG_COAP_MSG_CON;
      printf("Sending CON...\n");
      res = mg_coap_send_message(nc, &cm);
      if (res == 0) {
        printf("Sent CON with msg_id = %d\n", cm.msg_id);
      } else {
        printf("Error: %d\n", res);
        s_time_to_exit = 1;
      }
      break;
    }
    case 130:
    case 129: {
      struct mg_coap_message *cm = (struct mg_coap_message *) p;
      printf("ACK/RST for message with msg_id = %d received\n", cm->msg_id);
      nc->flags |= MG_F_SEND_AND_CLOSE;
      s_time_to_exit = 1;
      break;
    }
    case 131: {
      if (s_time_to_exit == 0) {
        printf("Server closed connection\n");
        s_time_to_exit = 1;
      }
      break;
    }
  }
}
