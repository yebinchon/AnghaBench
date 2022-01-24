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
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mg_connection {int flags; int /*<<< orphan*/  user_data; TYPE_1__ send_mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  MG_EV_POLL ; 
 int MG_F_CLOSE_IMMEDIATELY ; 
 int MG_F_CONNECTING ; 
 int MG_F_LISTENING ; 
 int MG_F_RECV_AND_CLOSE ; 
 int MG_F_SEND_AND_CLOSE ; 
 int MG_F_SSL ; 
 int MG_F_WANT_READ ; 
 int MG_F_WANT_WRITE ; 
 int /*<<< orphan*/  MG_TCP_IO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*) ; 
 int FUNC2 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,double) ; 
 scalar_t__ FUNC4 (struct mg_connection*,int /*<<< orphan*/ ) ; 

int FUNC5(struct mg_connection *nc, double now) {
  if (nc->flags & MG_F_CLOSE_IMMEDIATELY) {
    FUNC1(nc);
    return 0;
  } else if (nc->flags & MG_F_SEND_AND_CLOSE) {
    if (nc->send_mbuf.len == 0) {
      nc->flags |= MG_F_CLOSE_IMMEDIATELY;
      FUNC1(nc);
      return 0;
    }
  } else if (nc->flags & MG_F_RECV_AND_CLOSE) {
    FUNC1(nc);
    return 0;
  }
#if MG_ENABLE_SSL
  if ((nc->flags & (MG_F_SSL | MG_F_LISTENING | MG_F_CONNECTING)) == MG_F_SSL) {
    /* SSL library may have data to be delivered to the app in its buffers,
     * drain them. */
    int recved = 0;
    do {
      if (nc->flags & (MG_F_WANT_READ | MG_F_WANT_WRITE)) break;
      if (recv_avail_size(nc, MG_TCP_IO_SIZE) <= 0) break;
      recved = mg_do_recv(nc);
    } while (recved > 0);
  }
#endif /* MG_ENABLE_SSL */
  FUNC3(nc, now);
  {
    time_t now_t = (time_t) now;
    FUNC0(nc, NULL, nc->user_data, MG_EV_POLL, &now_t);
  }
  return 1;
}