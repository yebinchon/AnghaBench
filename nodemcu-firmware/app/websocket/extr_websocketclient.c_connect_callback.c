
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int connectionState; scalar_t__ isSecure; int port; int hostname; int path; TYPE_2__ const* extraHeaders; int expectedSecKey; } ;
typedef TYPE_1__ ws_info ;
typedef int uint8_t ;
struct espconn {scalar_t__ reverse; } ;
struct TYPE_10__ {char* member_0; char* member_1; } ;
typedef TYPE_2__ const header_t ;


 TYPE_2__ const* DEFAULT_HEADERS ;
 TYPE_2__ const* EMPTY_HEADERS ;
 int NODE_DBG (char*,...) ;
 int WS_INIT_REQUEST ;
 scalar_t__ WS_INIT_REQUEST_LENGTH ;
 int espconn_regist_recvcb (struct espconn*,int ) ;
 int espconn_secure_send (struct espconn*,int *,int) ;
 int espconn_send (struct espconn*,int *,int) ;
 int generateSecKeys (char**,int *) ;
 scalar_t__ headers_length (TYPE_2__ const*) ;
 int os_free (char*) ;
 int os_sprintf (char*,int ,int ,int ,int ) ;
 char* sprintf_headers (char*,TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*,int ) ;
 scalar_t__ strlen (int ) ;
 int ws_initReceiveCallback ;

__attribute__((used)) static void connect_callback(void *arg) {
  NODE_DBG("Connected\n");
  struct espconn *conn = (struct espconn *) arg;
  ws_info *ws = (ws_info *) conn->reverse;
  ws->connectionState = 3;

  espconn_regist_recvcb(conn, ws_initReceiveCallback);

  char *key;
  generateSecKeys(&key, &ws->expectedSecKey);

  header_t headers[] = {
   {"Upgrade", "websocket"},
   {"Connection", "Upgrade"},
   {"Sec-WebSocket-Key", key},
   {"Sec-WebSocket-Version", "13"},
   {0}
  };

  const header_t *extraHeaders = ws->extraHeaders ? ws->extraHeaders : EMPTY_HEADERS;

  char buf[WS_INIT_REQUEST_LENGTH + strlen(ws->path) + strlen(ws->hostname) +
   headers_length(DEFAULT_HEADERS) + headers_length(headers) + headers_length(extraHeaders) + 2];

  int len = os_sprintf(
                  buf,
                  WS_INIT_REQUEST,
                  ws->path,
                  ws->hostname,
                  ws->port
    );

  len = sprintf_headers(buf + len, headers, extraHeaders, DEFAULT_HEADERS, 0) - buf;

  os_free(key);
  NODE_DBG("request: %s", buf);
  if (ws->isSecure)
    espconn_secure_send(conn, (uint8_t *) buf, len);
  else
    espconn_send(conn, (uint8_t *) buf, len);
}
