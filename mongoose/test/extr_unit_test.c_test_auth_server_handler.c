
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct mg_str {int dummy; } ;
struct mg_connection {scalar_t__ user_data; } ;
struct http_message {int dummy; } ;
typedef int pass ;




 int mg_get_http_basic_auth (struct http_message*,char*,int,char*,int) ;
 struct mg_str* mg_get_http_header (struct http_message*,char*) ;
 int mg_vcmp (struct mg_str*,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void test_auth_server_handler(struct mg_connection *nc, int ev,
                                     void *ev_data) {
  struct http_message *hm = (struct http_message *) ev_data;
  struct mg_str *hdr;
  char user[256] = "";
  char pass[256] = "";
  int res;

  switch (ev) {
    case 128:
    case 129: {
      hdr = mg_get_http_header(hm, "Sec-WebSocket-Protocol");
      if (hdr != ((void*)0)) {
        if (mg_vcmp(hdr, "myproto") == 0) {
          *(int *) nc->user_data = 2;
          break;
        }
      }

      res = mg_get_http_basic_auth(hm, user, sizeof(user), pass, sizeof(pass));
      if (res == -1) {
        *(int *) nc->user_data = -1;
        break;
      }

      if (strcmp(user, "foo") == 0 && strcmp(pass, "bar") == 0) {
        *(int *) nc->user_data = 1;
      } else {
        *(int *) nc->user_data = -2;
      }

      break;
    }
  }
}
