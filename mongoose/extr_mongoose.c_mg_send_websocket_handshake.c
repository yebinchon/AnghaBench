
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int dummy; } ;
struct mg_connection {int dummy; } ;


 struct mg_str MG_NULL_STR ;
 int mg_mk_str (char const*) ;
 int mg_send_websocket_handshake3v (struct mg_connection*,int ,struct mg_str,struct mg_str,int ,struct mg_str,struct mg_str) ;

void mg_send_websocket_handshake(struct mg_connection *nc, const char *path,
                                 const char *extra_headers) {
  struct mg_str null_str = MG_NULL_STR;
  mg_send_websocket_handshake3v(
      nc, mg_mk_str(path), null_str , null_str ,
      mg_mk_str(extra_headers), null_str , null_str );
}
