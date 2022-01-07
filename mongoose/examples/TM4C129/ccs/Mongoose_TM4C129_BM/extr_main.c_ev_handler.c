
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_connection {int flags; int sa; } ;
struct TYPE_2__ {int p; scalar_t__ len; } ;
struct http_message {TYPE_1__ uri; } ;
typedef int addr ;


 int CLP_D1 ;
 int LEDWrite (int,int) ;



 int MG_EV_POLL ;
 int MG_F_SEND_AND_CLOSE ;
 int MG_SOCK_STRINGIFY_IP ;
 int MG_SOCK_STRINGIFY_PORT ;
 int UARTprintf (char*,struct mg_connection*,...) ;
 int mg_printf (struct mg_connection*,char*,char*,int,int ) ;
 int mg_send_response_line (struct mg_connection*,int,char*) ;
 int mg_sock_addr_to_str (int *,char*,int,int) ;

void ev_handler(struct mg_connection *nc, int ev, void *ev_data) {
  static int led_value = 0;
  if (ev == MG_EV_POLL) return;

  switch (ev) {
    case 130: {
      char addr[32];
      mg_sock_addr_to_str(&nc->sa, addr, sizeof(addr),
                          MG_SOCK_STRINGIFY_IP | MG_SOCK_STRINGIFY_PORT);
      UARTprintf("%p: Connection from %s\r\n", nc, addr);
      break;
    }
    case 128: {
      struct http_message *hm = (struct http_message *) ev_data;
      char addr[32];
      mg_sock_addr_to_str(&nc->sa, addr, sizeof(addr),
                          MG_SOCK_STRINGIFY_IP | MG_SOCK_STRINGIFY_PORT);
      UARTprintf("%p: HTTP request\r\n", nc);
      mg_send_response_line(nc, 200,
                            "Content-Type: text/html\r\n"
                            "Connection: close");
      mg_printf(nc,
                "\r\n<h1>Hello, %s!</h1>\r\n"
                "You asked for %.*s\r\n",
                addr, (int) hm->uri.len, hm->uri.p);
      nc->flags |= MG_F_SEND_AND_CLOSE;
      led_value ^= CLP_D1;
      LEDWrite(CLP_D1, led_value);
      break;
    }
    case 129: {
      UARTprintf("%p: Connection closed\r\n", nc);
      break;
    }
  }
}
