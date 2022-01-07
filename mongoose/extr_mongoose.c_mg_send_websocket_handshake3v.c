
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mg_str {scalar_t__ len; scalar_t__ p; } ;
struct mg_connection {int flags; } ;
struct mbuf {char* buf; scalar_t__ len; } ;
typedef int nonce ;


 int MG_F_IS_WEBSOCKET ;
 int mbuf_free (struct mbuf*) ;
 int mbuf_init (struct mbuf*,int ) ;
 int mg_base64_encode (unsigned char*,int,char*) ;
 int mg_basic_auth_header (struct mg_str const,struct mg_str const,struct mbuf*) ;
 int mg_printf (struct mg_connection*,char*,...) ;
 int mg_ws_random_mask () ;

void mg_send_websocket_handshake3v(struct mg_connection *nc,
                                   const struct mg_str path,
                                   const struct mg_str host,
                                   const struct mg_str protocol,
                                   const struct mg_str extra_headers,
                                   const struct mg_str user,
                                   const struct mg_str pass) {
  struct mbuf auth;
  char key[25];
  uint32_t nonce[4];
  nonce[0] = mg_ws_random_mask();
  nonce[1] = mg_ws_random_mask();
  nonce[2] = mg_ws_random_mask();
  nonce[3] = mg_ws_random_mask();
  mg_base64_encode((unsigned char *) &nonce, sizeof(nonce), key);

  mbuf_init(&auth, 0);
  if (user.len > 0) {
    mg_basic_auth_header(user, pass, &auth);
  }







  mg_printf(nc,
            "GET %.*s HTTP/1.1\r\n"
            "Upgrade: websocket\r\n"
            "Connection: Upgrade\r\n"
            "%.*s"
            "Sec-WebSocket-Version: 13\r\n"
            "Sec-WebSocket-Key: %s\r\n",
            (int) path.len, path.p, (int) auth.len,
            (auth.buf == ((void*)0) ? "" : auth.buf), key);


  if (host.len > 0) {
    int host_len = (int) (path.p - host.p);
    mg_printf(nc, "Host: %.*s\r\n", host_len, host.p);
  }
  if (protocol.len > 0) {
    mg_printf(nc, "Sec-WebSocket-Protocol: %.*s\r\n", (int) protocol.len,
              protocol.p);
  }
  if (extra_headers.len > 0) {
    mg_printf(nc, "%.*s", (int) extra_headers.len, extra_headers.p);
  }
  mg_printf(nc, "\r\n");

  nc->flags |= MG_F_IS_WEBSOCKET;

  mbuf_free(&auth);
}
