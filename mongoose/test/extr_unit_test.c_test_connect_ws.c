
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {char* user_data; } ;


 int ASSERT (int ) ;
 int ASSERT_STREQ (char*,char*) ;
 int c_str_ne ;
 int cb3 ;
 int cb4 ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int ) ;
 struct mg_connection* mg_connect_ws (struct mg_mgr*,int ,char*,int *,int *) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int poll_until (struct mg_mgr*,int,int ,char*,void*) ;

__attribute__((used)) static const char *test_connect_ws(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  const char *urls[] = {"ws://127.0.0.1:7778/ws", "http://127.0.0.1:7778/ws",
                        "127.0.0.1:7778/ws", ((void*)0)};
  const char **url;

  mg_mgr_init(&mgr, ((void*)0));

  ASSERT((nc = mg_bind(&mgr, "127.0.0.1:7778", cb3)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);

  for (url = urls; *url != ((void*)0); url++) {
    char buf[20] = "";
    ASSERT((nc = mg_connect_ws(&mgr, cb4, "ws://127.0.0.1:7778/ws", ((void*)0),
                               ((void*)0))) != ((void*)0));
    nc->user_data = buf;
    poll_until(&mgr, 1, c_str_ne, buf, (void *) "");
    ASSERT_STREQ(buf, "A");
  }

  mg_mgr_free(&mgr);

  return ((void*)0);
}
