
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;


 int mg_mk_str (char const*) ;
 int mg_send_websocket_handshake3v (struct mg_connection*,int ,int ,int ,int ,int ,int ) ;

void mg_send_websocket_handshake3(struct mg_connection *nc, const char *path,
                                  const char *host, const char *protocol,
                                  const char *extra_headers, const char *user,
                                  const char *pass) {
  mg_send_websocket_handshake3v(nc, mg_mk_str(path), mg_mk_str(host),
                                mg_mk_str(protocol), mg_mk_str(extra_headers),
                                mg_mk_str(user), mg_mk_str(pass));
}
