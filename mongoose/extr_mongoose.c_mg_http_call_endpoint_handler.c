
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_http_proto_data {scalar_t__ endpoint_handler; } ;
struct mg_http_endpoint {void* user_data; scalar_t__ handler; int auth_domain; int auth_file; } ;
struct mg_connection {scalar_t__ handler; int listener; void* user_data; } ;
struct http_message {int uri; } ;


 int MG_AUTH_FLAG_IS_GLOBAL_PASS_FILE ;
 int MG_EV_HTTP_MULTIPART_REQUEST ;
 int MG_EV_HTTP_REQUEST ;
 int mg_call (struct mg_connection*,scalar_t__,void*,int,struct http_message*) ;
 struct mg_http_endpoint* mg_http_get_endpoint_handler (int ,int *) ;
 struct mg_http_proto_data* mg_http_get_proto_data (struct mg_connection*) ;
 int mg_http_is_authorized (struct http_message*,int ,int ,int ,int ) ;
 int mg_http_send_digest_auth_request (struct mg_connection*,int ) ;

__attribute__((used)) static void mg_http_call_endpoint_handler(struct mg_connection *nc, int ev,
                                          struct http_message *hm) {
  struct mg_http_proto_data *pd = mg_http_get_proto_data(nc);
  void *user_data = nc->user_data;

  if (ev == MG_EV_HTTP_REQUEST



      ) {
    struct mg_http_endpoint *ep =
        mg_http_get_endpoint_handler(nc->listener, &hm->uri);
    if (ep != ((void*)0)) {







      pd->endpoint_handler = ep->handler;



    }
  }
  mg_call(nc, pd->endpoint_handler ? pd->endpoint_handler : nc->handler,
          user_data, ev, hm);
}
