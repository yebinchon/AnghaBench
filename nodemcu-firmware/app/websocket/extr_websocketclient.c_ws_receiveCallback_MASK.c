#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* frameBuffer; unsigned short frameBufferLen; int knownFailureCode; char* payloadBuffer; int payloadOriginalOpCode; int payloadBufferLen; int connectionState; scalar_t__ isSecure; int /*<<< orphan*/  (* onReceive ) (TYPE_1__*,int,char*,int) ;int /*<<< orphan*/  timeoutTimer; scalar_t__ unhealthyPoints; } ;
typedef  TYPE_1__ ws_info ;
typedef  int uint64_t ;
struct espconn {scalar_t__ reverse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int WS_OPCODE_CLOSE ; 
 int WS_OPCODE_CONTINUATION ; 
 int WS_OPCODE_PING ; 
 int WS_OPCODE_PONG ; 
 int /*<<< orphan*/  WS_PING_INTERVAL_MS ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC3 (struct espconn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,char*,int) ; 
 int /*<<< orphan*/  ws_closeSentCallback ; 
 int /*<<< orphan*/  FUNC11 (struct espconn*,int,char const*,unsigned short) ; 

__attribute__((used)) static void FUNC12(void *arg, char *buf, unsigned short len) {
  FUNC0("ws_receiveCallback %d \n", len);
  struct espconn *conn = (struct espconn *) arg;
  ws_info *ws = (ws_info *) conn->reverse;

  ws->unhealthyPoints = 0; // received data, connection is healthy
  FUNC8(&ws->timeoutTimer); // reset ping check
  FUNC7(&ws->timeoutTimer, WS_PING_INTERVAL_MS, true);


  char *b = buf;
  if (ws->frameBuffer != NULL) { // Append previous frameBuffer with new content
    FUNC0("Appending new frameBuffer to old one \n");

    ws->frameBuffer = FUNC9(ws->frameBuffer, ws->frameBufferLen + len);
    if (ws->frameBuffer == NULL) {
      FUNC0("Failed to allocate new framebuffer, disconnecting...\n");

      ws->knownFailureCode = -8;
      if (ws->isSecure)
        FUNC4(conn);
      else
        FUNC2(conn);
      return;
    }
    FUNC5(ws->frameBuffer + ws->frameBufferLen, b, len);

    ws->frameBufferLen += len;

    len = ws->frameBufferLen;
    b = ws->frameBuffer;
    FUNC0("New frameBufferLen: %d\n", len);
  }

  while (b != NULL) { // several frames can be present, b pointer will be moved to the next frame
    FUNC0("b[0] = %d \n", b[0]);
    FUNC0("b[1] = %d \n", b[1]);
    FUNC0("b[2] = %d \n", b[2]);
    FUNC0("b[3] = %d \n", b[3]);
    FUNC0("b[4] = %d \n", b[4]);
    FUNC0("b[5] = %d \n", b[5]);
    FUNC0("b[6] = %d \n", b[6]);
    FUNC0("b[7] = %d \n", b[7]);

    int isFin = b[0] & 0x80 ? 1 : 0;
    int opCode = b[0] & 0x0f;
    int hasMask = b[1] & 0x80 ? 1 : 0;
    uint64_t payloadLength = b[1] & 0x7f;
    int bufOffset = 2;
    if (payloadLength == 126) {
      payloadLength = (b[2] << 8) + b[3];
      bufOffset = 4;
    } else if (payloadLength == 127) { // this will clearly not hold in heap, abort??
      payloadLength = (b[2] << 24) + (b[3] << 16) + (b[4] << 8) + b[5];
      bufOffset = 6;
    }

    if (hasMask) {
      int maskOffset = bufOffset;
      bufOffset += 4;

      int i;
      for (i = 0; i < payloadLength; i++) {
        b[bufOffset + i] ^= b[maskOffset + i % 4]; // apply mask to decode payload
      }
    }

    if (payloadLength > len - bufOffset) {
      FUNC0("INCOMPLETE Frame \n");
      if (ws->frameBuffer == NULL) {
        FUNC0("Allocing new frameBuffer \n");
        ws->frameBuffer = FUNC1(1,len);
        if (ws->frameBuffer == NULL) {
          FUNC0("Failed to allocate framebuffer, disconnecting... \n");

          ws->knownFailureCode = -9;
          if (ws->isSecure)
            FUNC4(conn);
          else
            FUNC2(conn);
          return;
        }
        FUNC5(ws->frameBuffer, b, len);
        ws->frameBufferLen = len;
      }
      break; // since the buffer were already concat'ed, wait for the next receive
    }

    if (!isFin) {
      FUNC0("PARTIAL frame! Should concat payload and later restore opcode\n");
      if(ws->payloadBuffer == NULL) {
        FUNC0("Allocing new payloadBuffer \n");
        ws->payloadBuffer = FUNC1(1,payloadLength);
        if (ws->payloadBuffer == NULL) {
          FUNC0("Failed to allocate payloadBuffer, disconnecting...\n");

          ws->knownFailureCode = -10;
          if (ws->isSecure)
            FUNC4(conn);
          else
            FUNC2(conn);
          return;
        }
        FUNC5(ws->payloadBuffer, b + bufOffset, payloadLength);
        ws->frameBufferLen = payloadLength;
        ws->payloadOriginalOpCode = opCode;
      } else {
        FUNC0("Appending new payloadBuffer to old one \n");
        ws->payloadBuffer = FUNC9(ws->payloadBuffer, ws->payloadBufferLen + payloadLength);
        if (ws->payloadBuffer == NULL) {
          FUNC0("Failed to allocate new framebuffer, disconnecting...\n");

          ws->knownFailureCode = -11;
          if (ws->isSecure)
            FUNC4(conn);
          else
            FUNC2(conn);
          return;
        }
        FUNC5(ws->payloadBuffer + ws->payloadBufferLen, b + bufOffset, payloadLength);

        ws->payloadBufferLen += payloadLength;
      }
    } else {
      char *payload;
      if (opCode == WS_OPCODE_CONTINUATION) {
        FUNC0("restoring original opcode\n");
        if (ws->payloadBuffer == NULL) {
          FUNC0("Got FIN continuation frame but didn't receive any beforehand, disconnecting...\n");

          ws->knownFailureCode = -15;
          if (ws->isSecure)
            FUNC4(conn);
          else
            FUNC2(conn);
          return;
        }
        // concat buffer with payload
        payload = FUNC1(1,ws->payloadBufferLen + payloadLength);

        if (payload == NULL) {
          FUNC0("Failed to allocate new framebuffer, disconnecting...\n");

          ws->knownFailureCode = -12;
          if (ws->isSecure)
            FUNC4(conn);
          else
            FUNC2(conn);
          return;
        }
        FUNC5(payload, ws->payloadBuffer, ws->payloadBufferLen);
        FUNC5(payload + ws->payloadBufferLen, b + bufOffset, payloadLength);

        FUNC6(ws->payloadBuffer); // free previous buffer
        ws->payloadBuffer = NULL;

        payloadLength += ws->payloadBufferLen;
        ws->payloadBufferLen = 0;

        opCode = ws->payloadOriginalOpCode;
        ws->payloadOriginalOpCode = 0;
      } else {
        int extensionDataOffset = 0;

        if (opCode == WS_OPCODE_CLOSE && payloadLength > 0) {
          unsigned int reasonCode = b[bufOffset] << (8 + b[bufOffset + 1]);
          FUNC0("Closing due to: %d\n", reasonCode); // Must not be shown to client as per spec
          extensionDataOffset += 2;
        }

        payload = FUNC1(1,payloadLength - extensionDataOffset + 1);
        if (payload == NULL) {
          FUNC0("Failed to allocate payload, disconnecting...\n");

          ws->knownFailureCode = -13;
          if (ws->isSecure)
            FUNC4(conn);
          else
            FUNC2(conn);
          return;
        }

        FUNC5(payload, b + bufOffset + extensionDataOffset, payloadLength - extensionDataOffset);
        payload[payloadLength - extensionDataOffset] = '\0';
      }

      FUNC0("isFin %d \n", isFin);
      FUNC0("opCode %d \n", opCode);
      FUNC0("hasMask %d \n", hasMask);
      FUNC0("payloadLength %d \n", payloadLength);
      FUNC0("len %d \n", len);
      FUNC0("bufOffset %d \n", bufOffset);

      if (opCode == WS_OPCODE_CLOSE) {
        FUNC0("Closing message: %s\n", payload); // Must not be shown to client as per spec

        FUNC3(conn, ws_closeSentCallback);
        FUNC11(conn, WS_OPCODE_CLOSE, (const char *) (b + bufOffset), (unsigned short) payloadLength);
        ws->connectionState = 4;
      } else if (opCode == WS_OPCODE_PING) {
        FUNC11(conn, WS_OPCODE_PONG, (const char *) (b + bufOffset), (unsigned short) payloadLength);
      } else if (opCode == WS_OPCODE_PONG) {
        // ping alarm was already reset...
      } else {
        if (ws->onReceive) ws->onReceive(ws, payloadLength, payload, opCode);
      }
      FUNC6(payload);
    }

    bufOffset += payloadLength;
    FUNC0("bufOffset %d \n", bufOffset);
    if (bufOffset == len) { // (bufOffset > len) won't happen here because it's being checked earlier
      b = NULL;
      if (ws->frameBuffer != NULL) { // the last frame inside buffer was processed
        FUNC6(ws->frameBuffer);
        ws->frameBuffer = NULL;
        ws->frameBufferLen = 0;
      }
    } else {
      len -= bufOffset;
      b += bufOffset; // move b to next frame
      if (ws->frameBuffer != NULL) {
        FUNC0("Reallocing frameBuffer to remove consumed frame\n");

        ws->frameBuffer = FUNC9(ws->frameBuffer, ws->frameBufferLen + len);
        if (ws->frameBuffer == NULL) {
          FUNC0("Failed to allocate new frame buffer, disconnecting...\n");

          ws->knownFailureCode = -14;
          if (ws->isSecure)
            FUNC4(conn);
          else
            FUNC2(conn);
          return;
        }
        FUNC5(ws->frameBuffer + ws->frameBufferLen, b, len);

        ws->frameBufferLen += len;
        b = ws->frameBuffer;
      }
    }
  }
}