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
struct mg_connection {struct mbuf recv_mbuf; } ;

/* Variables and functions */
#define  MG_EV_RECV 128 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mg_connection *nc, int ev, void *p) {
  struct mbuf *io = &nc->recv_mbuf;
  (void) p;

  switch (ev) {
    case MG_EV_RECV:
      FUNC1(nc, io->buf, io->len);  // Echo message back
      FUNC0(io, io->len);       // Discard message from recv buffer
      break;
    default:
      break;
  }
}