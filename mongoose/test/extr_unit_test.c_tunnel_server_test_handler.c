
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {void* user_data; int flags; } ;





 int MG_F_SEND_AND_CLOSE ;
 int free (void*) ;
 scalar_t__ malloc (int) ;
 int mg_printf (struct mg_connection*,char*,char*) ;
 int mg_printf_http_chunk (struct mg_connection*,char*,int ) ;
 int mg_send_http_chunk (struct mg_connection*,char*,int ) ;
 int mg_set_timer (struct mg_connection*,int ) ;
 int mg_time () ;

void tunnel_server_test_handler(struct mg_connection *nc, int ev,
                                void *ev_data) {
  (void) ev_data;
  switch (ev) {
    case 129:
      if (nc->user_data) break;

      nc->user_data = (void *) malloc(sizeof(int));
      (*(int *) nc->user_data) = 0;
      mg_set_timer(nc, mg_time() + 0.01);

      mg_printf(nc, "%s",
                "HTTP/1.1 200 OK\r\nTransfer-Encoding: chunked\r\n\r\n");
      break;
    case 128:
      mg_printf_http_chunk(nc, "%d", (*(int *) nc->user_data)++);
      if (*(int *) nc->user_data == 10) {
        mg_send_http_chunk(nc, "", 0);
        nc->flags |= MG_F_SEND_AND_CLOSE;
      } else {
        mg_set_timer(nc, mg_time() + 0.01);
      }
      break;
    case 130:
      free(nc->user_data);
    default:
      break;
  }
}
