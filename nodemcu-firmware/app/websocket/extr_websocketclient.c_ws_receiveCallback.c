
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* frameBuffer; unsigned short frameBufferLen; int knownFailureCode; char* payloadBuffer; int payloadOriginalOpCode; int payloadBufferLen; int connectionState; scalar_t__ isSecure; int (* onReceive ) (TYPE_1__*,int,char*,int) ;int timeoutTimer; scalar_t__ unhealthyPoints; } ;
typedef TYPE_1__ ws_info ;
typedef int uint64_t ;
struct espconn {scalar_t__ reverse; } ;


 int NODE_DBG (char*,...) ;
 int WS_OPCODE_CLOSE ;
 int WS_OPCODE_CONTINUATION ;
 int WS_OPCODE_PING ;
 int WS_OPCODE_PONG ;
 int WS_PING_INTERVAL_MS ;
 void* calloc (int,int) ;
 int espconn_disconnect (struct espconn*) ;
 int espconn_regist_sentcb (struct espconn*,int ) ;
 int espconn_secure_disconnect (struct espconn*) ;
 int memcpy (char*,char*,unsigned short) ;
 int os_free (char*) ;
 int os_timer_arm (int *,int ,int) ;
 int os_timer_disarm (int *) ;
 void* realloc (char*,unsigned short) ;
 int stub1 (TYPE_1__*,int,char*,int) ;
 int ws_closeSentCallback ;
 int ws_sendFrame (struct espconn*,int,char const*,unsigned short) ;

__attribute__((used)) static void ws_receiveCallback(void *arg, char *buf, unsigned short len) {
  NODE_DBG("ws_receiveCallback %d \n", len);
  struct espconn *conn = (struct espconn *) arg;
  ws_info *ws = (ws_info *) conn->reverse;

  ws->unhealthyPoints = 0;
  os_timer_disarm(&ws->timeoutTimer);
  os_timer_arm(&ws->timeoutTimer, WS_PING_INTERVAL_MS, 1);


  char *b = buf;
  if (ws->frameBuffer != ((void*)0)) {
    NODE_DBG("Appending new frameBuffer to old one \n");

    ws->frameBuffer = realloc(ws->frameBuffer, ws->frameBufferLen + len);
    if (ws->frameBuffer == ((void*)0)) {
      NODE_DBG("Failed to allocate new framebuffer, disconnecting...\n");

      ws->knownFailureCode = -8;
      if (ws->isSecure)
        espconn_secure_disconnect(conn);
      else
        espconn_disconnect(conn);
      return;
    }
    memcpy(ws->frameBuffer + ws->frameBufferLen, b, len);

    ws->frameBufferLen += len;

    len = ws->frameBufferLen;
    b = ws->frameBuffer;
    NODE_DBG("New frameBufferLen: %d\n", len);
  }

  while (b != ((void*)0)) {
    NODE_DBG("b[0] = %d \n", b[0]);
    NODE_DBG("b[1] = %d \n", b[1]);
    NODE_DBG("b[2] = %d \n", b[2]);
    NODE_DBG("b[3] = %d \n", b[3]);
    NODE_DBG("b[4] = %d \n", b[4]);
    NODE_DBG("b[5] = %d \n", b[5]);
    NODE_DBG("b[6] = %d \n", b[6]);
    NODE_DBG("b[7] = %d \n", b[7]);

    int isFin = b[0] & 0x80 ? 1 : 0;
    int opCode = b[0] & 0x0f;
    int hasMask = b[1] & 0x80 ? 1 : 0;
    uint64_t payloadLength = b[1] & 0x7f;
    int bufOffset = 2;
    if (payloadLength == 126) {
      payloadLength = (b[2] << 8) + b[3];
      bufOffset = 4;
    } else if (payloadLength == 127) {
      payloadLength = (b[2] << 24) + (b[3] << 16) + (b[4] << 8) + b[5];
      bufOffset = 6;
    }

    if (hasMask) {
      int maskOffset = bufOffset;
      bufOffset += 4;

      int i;
      for (i = 0; i < payloadLength; i++) {
        b[bufOffset + i] ^= b[maskOffset + i % 4];
      }
    }

    if (payloadLength > len - bufOffset) {
      NODE_DBG("INCOMPLETE Frame \n");
      if (ws->frameBuffer == ((void*)0)) {
        NODE_DBG("Allocing new frameBuffer \n");
        ws->frameBuffer = calloc(1,len);
        if (ws->frameBuffer == ((void*)0)) {
          NODE_DBG("Failed to allocate framebuffer, disconnecting... \n");

          ws->knownFailureCode = -9;
          if (ws->isSecure)
            espconn_secure_disconnect(conn);
          else
            espconn_disconnect(conn);
          return;
        }
        memcpy(ws->frameBuffer, b, len);
        ws->frameBufferLen = len;
      }
      break;
    }

    if (!isFin) {
      NODE_DBG("PARTIAL frame! Should concat payload and later restore opcode\n");
      if(ws->payloadBuffer == ((void*)0)) {
        NODE_DBG("Allocing new payloadBuffer \n");
        ws->payloadBuffer = calloc(1,payloadLength);
        if (ws->payloadBuffer == ((void*)0)) {
          NODE_DBG("Failed to allocate payloadBuffer, disconnecting...\n");

          ws->knownFailureCode = -10;
          if (ws->isSecure)
            espconn_secure_disconnect(conn);
          else
            espconn_disconnect(conn);
          return;
        }
        memcpy(ws->payloadBuffer, b + bufOffset, payloadLength);
        ws->frameBufferLen = payloadLength;
        ws->payloadOriginalOpCode = opCode;
      } else {
        NODE_DBG("Appending new payloadBuffer to old one \n");
        ws->payloadBuffer = realloc(ws->payloadBuffer, ws->payloadBufferLen + payloadLength);
        if (ws->payloadBuffer == ((void*)0)) {
          NODE_DBG("Failed to allocate new framebuffer, disconnecting...\n");

          ws->knownFailureCode = -11;
          if (ws->isSecure)
            espconn_secure_disconnect(conn);
          else
            espconn_disconnect(conn);
          return;
        }
        memcpy(ws->payloadBuffer + ws->payloadBufferLen, b + bufOffset, payloadLength);

        ws->payloadBufferLen += payloadLength;
      }
    } else {
      char *payload;
      if (opCode == WS_OPCODE_CONTINUATION) {
        NODE_DBG("restoring original opcode\n");
        if (ws->payloadBuffer == ((void*)0)) {
          NODE_DBG("Got FIN continuation frame but didn't receive any beforehand, disconnecting...\n");

          ws->knownFailureCode = -15;
          if (ws->isSecure)
            espconn_secure_disconnect(conn);
          else
            espconn_disconnect(conn);
          return;
        }

        payload = calloc(1,ws->payloadBufferLen + payloadLength);

        if (payload == ((void*)0)) {
          NODE_DBG("Failed to allocate new framebuffer, disconnecting...\n");

          ws->knownFailureCode = -12;
          if (ws->isSecure)
            espconn_secure_disconnect(conn);
          else
            espconn_disconnect(conn);
          return;
        }
        memcpy(payload, ws->payloadBuffer, ws->payloadBufferLen);
        memcpy(payload + ws->payloadBufferLen, b + bufOffset, payloadLength);

        os_free(ws->payloadBuffer);
        ws->payloadBuffer = ((void*)0);

        payloadLength += ws->payloadBufferLen;
        ws->payloadBufferLen = 0;

        opCode = ws->payloadOriginalOpCode;
        ws->payloadOriginalOpCode = 0;
      } else {
        int extensionDataOffset = 0;

        if (opCode == WS_OPCODE_CLOSE && payloadLength > 0) {
          unsigned int reasonCode = b[bufOffset] << 8 + b[bufOffset + 1];
          NODE_DBG("Closing due to: %d\n", reasonCode);
          extensionDataOffset += 2;
        }

        payload = calloc(1,payloadLength - extensionDataOffset + 1);
        if (payload == ((void*)0)) {
          NODE_DBG("Failed to allocate payload, disconnecting...\n");

          ws->knownFailureCode = -13;
          if (ws->isSecure)
            espconn_secure_disconnect(conn);
          else
            espconn_disconnect(conn);
          return;
        }

        memcpy(payload, b + bufOffset + extensionDataOffset, payloadLength - extensionDataOffset);
        payload[payloadLength - extensionDataOffset] = '\0';
      }

      NODE_DBG("isFin %d \n", isFin);
      NODE_DBG("opCode %d \n", opCode);
      NODE_DBG("hasMask %d \n", hasMask);
      NODE_DBG("payloadLength %d \n", payloadLength);
      NODE_DBG("len %d \n", len);
      NODE_DBG("bufOffset %d \n", bufOffset);

      if (opCode == WS_OPCODE_CLOSE) {
        NODE_DBG("Closing message: %s\n", payload);

        espconn_regist_sentcb(conn, ws_closeSentCallback);
        ws_sendFrame(conn, WS_OPCODE_CLOSE, (const char *) (b + bufOffset), (unsigned short) payloadLength);
        ws->connectionState = 4;
      } else if (opCode == WS_OPCODE_PING) {
        ws_sendFrame(conn, WS_OPCODE_PONG, (const char *) (b + bufOffset), (unsigned short) payloadLength);
      } else if (opCode == WS_OPCODE_PONG) {

      } else {
        if (ws->onReceive) ws->onReceive(ws, payloadLength, payload, opCode);
      }
      os_free(payload);
    }

    bufOffset += payloadLength;
    NODE_DBG("bufOffset %d \n", bufOffset);
    if (bufOffset == len) {
      b = ((void*)0);
      if (ws->frameBuffer != ((void*)0)) {
        os_free(ws->frameBuffer);
        ws->frameBuffer = ((void*)0);
        ws->frameBufferLen = 0;
      }
    } else {
      len -= bufOffset;
      b += bufOffset;
      if (ws->frameBuffer != ((void*)0)) {
        NODE_DBG("Reallocing frameBuffer to remove consumed frame\n");

        ws->frameBuffer = realloc(ws->frameBuffer, ws->frameBufferLen + len);
        if (ws->frameBuffer == ((void*)0)) {
          NODE_DBG("Failed to allocate new frame buffer, disconnecting...\n");

          ws->knownFailureCode = -14;
          if (ws->isSecure)
            espconn_secure_disconnect(conn);
          else
            espconn_disconnect(conn);
          return;
        }
        memcpy(ws->frameBuffer + ws->frameBufferLen, b, len);

        ws->frameBufferLen += len;
        b = ws->frameBuffer;
      }
    }
  }
}
