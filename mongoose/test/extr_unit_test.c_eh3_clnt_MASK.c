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
struct udp_res {int /*<<< orphan*/  buf_clnt; } ;
struct mbuf {char* buf; int len; } ;
struct mg_connection {int /*<<< orphan*/  flags; struct mbuf recv_mbuf; TYPE_1__* mgr; } ;
struct TYPE_2__ {scalar_t__ user_data; } ;

/* Variables and functions */
 int MG_EV_CLOSE ; 
 int MG_EV_CONNECT ; 
 int MG_EV_RECV ; 
 int /*<<< orphan*/  MG_F_CLOSE_IMMEDIATELY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,char*,char*) ; 

__attribute__((used)) static void FUNC3(struct mg_connection *nc, int ev, void *p) {
  struct udp_res *ur = (struct udp_res *) nc->mgr->user_data;
  struct mbuf *io = &nc->recv_mbuf;
  (void) p;

  if (ev == MG_EV_CONNECT) {
    FUNC0(&ur->buf_clnt, "CONNECT", 7);
    FUNC2(nc, "%s", "boo!");
  } else if (ev == MG_EV_RECV) {
    FUNC0(&ur->buf_clnt, " RECV ", 6);
    FUNC0(&ur->buf_clnt, io->buf, io->len);
    FUNC1(io, io->len);
    nc->flags |= MG_F_CLOSE_IMMEDIATELY;
  } else if (ev == MG_EV_CLOSE) {
    FUNC0(&ur->buf_clnt, " CLOSE", 6);
  }
}