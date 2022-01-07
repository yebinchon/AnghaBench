
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;


 int mg_send_websocket_handshake3 (struct mg_connection*,char const*,char const*,char const*,char const*,int *,int *) ;

void mg_send_websocket_handshake2(struct mg_connection *nc, const char *path,
                                  const char *host, const char *protocol,
                                  const char *extra_headers) {
  mg_send_websocket_handshake3(nc, path, host, protocol, extra_headers, ((void*)0),
                               ((void*)0));
}
