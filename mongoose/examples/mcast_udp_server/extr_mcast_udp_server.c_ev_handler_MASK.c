#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct TYPE_3__ {TYPE_2__ sin; } ;
struct mbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct mg_connection {int /*<<< orphan*/  flags; TYPE_1__ sa; struct mbuf recv_mbuf; } ;

/* Variables and functions */
#define  MG_EV_POLL 129 
#define  MG_EV_RECV 128 
 int /*<<< orphan*/  MG_F_SEND_AND_CLOSE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int,...) ; 

__attribute__((used)) static void FUNC4(struct mg_connection *nc, int ev, void *p) {
  struct mbuf *io = &nc->recv_mbuf;
  (void) p;
  switch (ev) {
    case MG_EV_POLL: {
      const char *peer;
      peer = FUNC0(nc->sa.sin.sin_addr);
      FUNC3("nc->sa: %s %d\n", peer, FUNC2(nc->sa.sin.sin_port));

      break;
    }
    case MG_EV_RECV:
      FUNC3("Received (%zu bytes): '%.*s'\n", io->len, (int) io->len, io->buf);
      FUNC1(io, io->len);
      nc->flags |= MG_F_SEND_AND_CLOSE;
      break;
    default:
      break;
  }
}