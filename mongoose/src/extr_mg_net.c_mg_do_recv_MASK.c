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
struct TYPE_2__ {scalar_t__ size; scalar_t__ len; char* buf; } ;
struct mg_connection {int flags; TYPE_1__ recv_mbuf; } ;

/* Variables and functions */
 int MG_F_CLOSE_IMMEDIATELY ; 
 int MG_F_CONNECTING ; 
 int MG_F_LISTENING ; 
 int MG_F_UDP ; 
 size_t MG_TCP_IO_SIZE ; 
 size_t MG_UDP_IO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int FUNC1 (struct mg_connection*,char*,size_t) ; 
 int FUNC2 (struct mg_connection*,char*,size_t) ; 
 size_t FUNC3 (struct mg_connection*,size_t) ; 

__attribute__((used)) static int FUNC4(struct mg_connection *nc) {
  int res = 0;
  char *buf = NULL;
  size_t len = (nc->flags & MG_F_UDP ? MG_UDP_IO_SIZE : MG_TCP_IO_SIZE);
  if ((nc->flags & (MG_F_CLOSE_IMMEDIATELY | MG_F_CONNECTING)) ||
      ((nc->flags & MG_F_LISTENING) && !(nc->flags & MG_F_UDP))) {
    return -1;
  }
  do {
    len = FUNC3(nc, len);
    if (len == 0) {
      res = -2;
      break;
    }
    if (nc->recv_mbuf.size < nc->recv_mbuf.len + len) {
      FUNC0(&nc->recv_mbuf, nc->recv_mbuf.len + len);
    }
    buf = nc->recv_mbuf.buf + nc->recv_mbuf.len;
    len = nc->recv_mbuf.size - nc->recv_mbuf.len;
    if (nc->flags & MG_F_UDP) {
      res = FUNC2(nc, buf, len);
    } else {
      res = FUNC1(nc, buf, len);
    }
  } while (res > 0 && !(nc->flags & (MG_F_CLOSE_IMMEDIATELY | MG_F_UDP)));
  return res;
}