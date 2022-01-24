#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mg_str {scalar_t__ len; scalar_t__ p; } ;
struct mg_connection {int /*<<< orphan*/  flags; } ;
struct mbuf {char* buf; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  nonce ;

/* Variables and functions */
 int /*<<< orphan*/  MG_F_IS_WEBSOCKET ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_str const,struct mg_str const,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct mg_connection *nc,
                                   const struct mg_str path,
                                   const struct mg_str host,
                                   const struct mg_str protocol,
                                   const struct mg_str extra_headers,
                                   const struct mg_str user,
                                   const struct mg_str pass) {
  struct mbuf auth;
  char key[25];
  uint32_t nonce[4];
  nonce[0] = FUNC5();
  nonce[1] = FUNC5();
  nonce[2] = FUNC5();
  nonce[3] = FUNC5();
  FUNC2((unsigned char *) &nonce, sizeof(nonce), key);

  FUNC1(&auth, 0);
  if (user.len > 0) {
    FUNC3(user, pass, &auth);
  }

  /*
   * NOTE: the  (auth.buf == NULL ? "" : auth.buf) is because cc3200 libc is
   * broken: it doesn't like zero length to be passed to %.*s
   * i.e. sprintf("f%.*so", (int)0, NULL), yields `f\0o`.
   * because it handles NULL specially (and incorrectly).
   */
  FUNC4(nc,
            "GET %.*s HTTP/1.1\r\n"
            "Upgrade: websocket\r\n"
            "Connection: Upgrade\r\n"
            "%.*s"
            "Sec-WebSocket-Version: 13\r\n"
            "Sec-WebSocket-Key: %s\r\n",
            (int) path.len, path.p, (int) auth.len,
            (auth.buf == NULL ? "" : auth.buf), key);

  /* TODO(mkm): take default hostname from http proto data if host == NULL */
  if (host.len > 0) {
    int host_len = (int) (path.p - host.p); /* Account for possible :PORT */
    FUNC4(nc, "Host: %.*s\r\n", host_len, host.p);
  }
  if (protocol.len > 0) {
    FUNC4(nc, "Sec-WebSocket-Protocol: %.*s\r\n", (int) protocol.len,
              protocol.p);
  }
  if (extra_headers.len > 0) {
    FUNC4(nc, "%.*s", (int) extra_headers.len, extra_headers.p);
  }
  FUNC4(nc, "\r\n");

  nc->flags |= MG_F_IS_WEBSOCKET;

  FUNC0(&auth);
}