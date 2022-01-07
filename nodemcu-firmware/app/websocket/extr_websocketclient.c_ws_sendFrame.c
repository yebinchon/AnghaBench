
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int connectionState; int knownFailureCode; scalar_t__ isSecure; } ;
typedef TYPE_1__ ws_info ;
typedef int uint8_t ;
struct espconn {scalar_t__ reverse; } ;


 int NODE_DBG (char*,...) ;
 char* calloc (int,int) ;
 int espconn_disconnect (struct espconn*) ;
 int espconn_secure_disconnect (struct espconn*) ;
 int espconn_secure_send (struct espconn*,int *,int) ;
 int espconn_send (struct espconn*,int *,int) ;
 int memcpy (char*,char const*,unsigned short) ;
 int os_free (char*) ;
 scalar_t__ os_random () ;

__attribute__((used)) static void ws_sendFrame(struct espconn *conn, int opCode, const char *data, unsigned short len) {
  NODE_DBG("ws_sendFrame %d %d\n", opCode, len);
  ws_info *ws = (ws_info *) conn->reverse;

  if (ws->connectionState == 4) {
    NODE_DBG("already in closing state\n");
    return;
  } else if (ws->connectionState != 3) {
    NODE_DBG("can't send message while not in a connected state\n");
    return;
  }

  char *b = calloc(1,10 + len);
  if (b == ((void*)0)) {
    NODE_DBG("Out of memory when receiving message, disconnecting...\n");

    ws->knownFailureCode = -16;
    if (ws->isSecure)
      espconn_secure_disconnect(conn);
    else
      espconn_disconnect(conn);
    return;
  }

  b[0] = 1 << 7;
  b[0] += opCode;
  b[1] = 1 << 7;
  int bufOffset;
  if (len < 126) {
    b[1] += len;
    bufOffset = 2;
  } else if (len < 0x10000) {
    b[1] += 126;
    b[2] = len >> 8;
    b[3] = len;
    bufOffset = 4;
  } else {
    b[1] += 127;
    b[2] = len >> 24;
    b[3] = len >> 16;
    b[4] = len >> 8;
    b[5] = len;
    bufOffset = 6;
  }


  b[bufOffset] = (char) os_random();
  b[bufOffset + 1] = (char) os_random();
  b[bufOffset + 2] = (char) os_random();
  b[bufOffset + 3] = (char) os_random();
  bufOffset += 4;


  memcpy(b + bufOffset, data, len);


  int i;
  for (i = 0; i < len; i++) {
    b[bufOffset + i] ^= b[bufOffset - 4 + i % 4];
  }
  bufOffset += len;

  NODE_DBG("b[0] = %d \n", b[0]);
  NODE_DBG("b[1] = %d \n", b[1]);
  NODE_DBG("b[2] = %d \n", b[2]);
  NODE_DBG("b[3] = %d \n", b[3]);
  NODE_DBG("b[4] = %d \n", b[4]);
  NODE_DBG("b[5] = %d \n", b[5]);
  NODE_DBG("b[6] = %d \n", b[6]);
  NODE_DBG("b[7] = %d \n", b[7]);
  NODE_DBG("b[8] = %d \n", b[8]);
  NODE_DBG("b[9] = %d \n", b[9]);

  NODE_DBG("sending message\n");
  if (ws->isSecure)
    espconn_secure_send(conn, (uint8_t *) b, bufOffset);
  else
    espconn_send(conn, (uint8_t *) b, bufOffset);

  os_free(b);
}
