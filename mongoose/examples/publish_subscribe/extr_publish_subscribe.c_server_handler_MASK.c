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
struct mbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct mg_connection {int flags; int /*<<< orphan*/  mgr; struct mbuf recv_mbuf; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int MG_EV_ACCEPT ; 
 int MG_EV_RECV ; 
 int MG_F_USER_2 ; 
 int MG_SOCK_STRINGIFY_IP ; 
 int MG_SOCK_STRINGIFY_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mg_connection* FUNC1 (int /*<<< orphan*/ ,struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(struct mg_connection *nc, int ev, void *p) {
  (void) p;
  if (ev == MG_EV_RECV) {
    // Push received message to all ncections
    struct mbuf *io = &nc->recv_mbuf;
    struct mg_connection *c;

    for (c = FUNC1(nc->mgr, NULL); c != NULL; c = FUNC1(nc->mgr, c)) {
      if (!(c->flags & MG_F_USER_2)) continue;  // Skip non-client connections
      FUNC2(c, io->buf, io->len);
    }
    FUNC0(io, io->len);
  } else if (ev == MG_EV_ACCEPT) {
    char addr[32];
    FUNC3(p, addr, sizeof(addr),
                        MG_SOCK_STRINGIFY_IP | MG_SOCK_STRINGIFY_PORT);
    FUNC4("New client connected from %s\n", addr);
  }
}