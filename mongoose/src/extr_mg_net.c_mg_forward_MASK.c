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
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct mg_connection {TYPE_1__ recv_mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct mg_connection *from, struct mg_connection *to) {
  FUNC1(to, from->recv_mbuf.buf, from->recv_mbuf.len);
  FUNC0(&from->recv_mbuf, from->recv_mbuf.len);
}