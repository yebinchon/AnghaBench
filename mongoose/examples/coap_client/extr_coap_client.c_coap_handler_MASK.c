#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct mg_connection {int /*<<< orphan*/  flags; } ;
struct mg_coap_message {int msg_id; int /*<<< orphan*/  msg_type; } ;
typedef  int /*<<< orphan*/  cm ;

/* Variables and functions */
 int /*<<< orphan*/  MG_COAP_MSG_CON ; 
#define  MG_EV_CLOSE 131 
#define  MG_EV_COAP_ACK 130 
#define  MG_EV_COAP_RST 129 
#define  MG_EV_CONNECT 128 
 int /*<<< orphan*/  MG_F_SEND_AND_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct mg_coap_message*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mg_connection*,struct mg_coap_message*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int s_time_to_exit ; 

__attribute__((used)) static void FUNC3(struct mg_connection *nc, int ev, void *p) {
  switch (ev) {
    case MG_EV_CONNECT: {
      struct mg_coap_message cm;
      uint32_t res;

      FUNC0(&cm, 0, sizeof(cm));
      cm.msg_id = 1;
      cm.msg_type = MG_COAP_MSG_CON;
      FUNC2("Sending CON...\n");
      res = FUNC1(nc, &cm);
      if (res == 0) {
        FUNC2("Sent CON with msg_id = %d\n", cm.msg_id);
      } else {
        FUNC2("Error: %d\n", res);
        s_time_to_exit = 1;
      }
      break;
    }
    case MG_EV_COAP_ACK:
    case MG_EV_COAP_RST: {
      struct mg_coap_message *cm = (struct mg_coap_message *) p;
      FUNC2("ACK/RST for message with msg_id = %d received\n", cm->msg_id);
      nc->flags |= MG_F_SEND_AND_CLOSE;
      s_time_to_exit = 1;
      break;
    }
    case MG_EV_CLOSE: {
      if (s_time_to_exit == 0) {
        FUNC2("Server closed connection\n");
        s_time_to_exit = 1;
      }
      break;
    }
  }
}