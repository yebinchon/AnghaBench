
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_connection {int flags; scalar_t__ user_data; } ;
struct TYPE_2__ {int p; scalar_t__ len; } ;
struct http_message {int resp_code; TYPE_1__ message; } ;




 int MG_F_SEND_AND_CLOSE ;
 int mg_printf_http_chunk (struct mg_connection*,char*,char*,int,int ) ;
 int mg_send_http_chunk (struct mg_connection*,char*,int ) ;
 int unlink_conns (struct mg_connection*) ;

__attribute__((used)) static void s3_handler(struct mg_connection *nc, int ev, void *ev_data) {
  struct http_message *hm = (struct http_message *) ev_data;
  struct mg_connection *nc2 = (struct mg_connection *) nc->user_data;

  switch (ev) {
    case 128:
      if (nc2 != ((void*)0)) {
        mg_printf_http_chunk(nc2, "%s%.*s",
                             (hm->resp_code == 200 ? "" : "Error: "),
                             (int) hm->message.len, hm->message.p);
        mg_send_http_chunk(nc2, "", 0);
      }
      unlink_conns(nc);
      nc->flags |= MG_F_SEND_AND_CLOSE;
      break;
    case 129:
      unlink_conns(nc);
      break;
    default:
      break;
  }
}
