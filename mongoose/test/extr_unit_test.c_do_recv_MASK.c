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
struct simple_data {int /*<<< orphan*/  data_rcvd; int /*<<< orphan*/  fail; int /*<<< orphan*/  to_send; } ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct mg_connection {TYPE_1__ recv_mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct simple_data *d, struct mg_connection *nc,
                    void *ev_data) {
  if (*((int *) ev_data) != (int) nc->recv_mbuf.len) {
    char msg[100];
    FUNC1(msg, "(num recv wrong: %d vs %d)", *((int *) ev_data),
            (int) FUNC3(d->to_send));
    FUNC2(d->fail, msg);
    return;
  }
  FUNC4(d->data_rcvd, nc->recv_mbuf.buf, nc->recv_mbuf.len);
  FUNC0(&nc->recv_mbuf, nc->recv_mbuf.len);
}