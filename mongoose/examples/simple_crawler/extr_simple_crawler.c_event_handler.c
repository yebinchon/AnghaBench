
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userdata {char* url; } ;
struct mg_connection {char* user_data; int flags; } ;
struct http_message {int dummy; } ;





 int MG_F_SEND_AND_CLOSE ;
 int free (char*) ;
 int handle_reply (struct mg_connection*,struct http_message*) ;
 int printf (char*,char*,char*) ;
 char* strerror (int) ;

__attribute__((used)) static void event_handler(struct mg_connection *nc, int event, void *data) {
  struct http_message *hm = (struct http_message *) data;
  int connect_status;

  switch (event) {
    case 129:
      connect_status = *(int *) data;
      if (connect_status != 0) {
        printf("Error while loading page: %s, error: %s\n",
               ((struct userdata *) nc->user_data)->url,
               strerror(connect_status));
      }
      break;
    case 130:
      free(((struct userdata *) nc->user_data)->url);
      free(nc->user_data);
      break;
    case 128:
      handle_reply(nc, hm);
      nc->flags |= MG_F_SEND_AND_CLOSE;
      break;
    default:
      break;
  }
}
