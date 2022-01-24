#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int connectionState; int knownFailureCode; scalar_t__ isSecure; } ;
typedef  TYPE_1__ ws_info ;
typedef  int /*<<< orphan*/  uint8_t ;
struct espconn {scalar_t__ reverse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC3 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC4 (struct espconn*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct espconn*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,unsigned short) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct espconn *conn, int opCode, const char *data, unsigned short len) {
  FUNC0("ws_sendFrame %d %d\n", opCode, len);
  ws_info *ws = (ws_info *) conn->reverse;

  if (ws->connectionState == 4) {
    FUNC0("already in closing state\n");
    return;
  } else if (ws->connectionState != 3) {
    FUNC0("can't send message while not in a connected state\n");
    return;
  }

  char *b = FUNC1(1,10 + len); // 10 bytes = worst case scenario for framming
  if (b == NULL) {
    FUNC0("Out of memory when receiving message, disconnecting...\n");

    ws->knownFailureCode = -16;
    if (ws->isSecure)
      FUNC3(conn);
    else
      FUNC2(conn);
    return;
  }

  b[0] = 1 << 7; // has fin
  b[0] += opCode;
  b[1] = 1 << 7; // has mask
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

  // Random mask:
  b[bufOffset] = (char) FUNC8();
  b[bufOffset + 1] = (char) FUNC8();
  b[bufOffset + 2] = (char) FUNC8();
  b[bufOffset + 3] = (char) FUNC8();
  bufOffset += 4;

  // Copy data to buffer
  FUNC6(b + bufOffset, data, len);

  // Apply mask to encode payload
  int i;
  for (i = 0; i < len; i++) {
    b[bufOffset + i] ^= b[bufOffset - 4 + i % 4];
  }
  bufOffset += len;

  FUNC0("b[0] = %d \n", b[0]);
  FUNC0("b[1] = %d \n", b[1]);
  FUNC0("b[2] = %d \n", b[2]);
  FUNC0("b[3] = %d \n", b[3]);
  FUNC0("b[4] = %d \n", b[4]);
  FUNC0("b[5] = %d \n", b[5]);
  FUNC0("b[6] = %d \n", b[6]);
  FUNC0("b[7] = %d \n", b[7]);
  FUNC0("b[8] = %d \n", b[8]);
  FUNC0("b[9] = %d \n", b[9]);

  FUNC0("sending message\n");
  if (ws->isSecure)
    FUNC4(conn, (uint8_t *) b, bufOffset);
  else
    FUNC5(conn, (uint8_t *) b, bufOffset);

  FUNC7(b);
}