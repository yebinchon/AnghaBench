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
struct TYPE_3__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct TYPE_4__ {TYPE_1__ sin; } ;
struct mg_connection {int flags; int /*<<< orphan*/  user_data; TYPE_2__ sa; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MG_EV_CONNECT ; 
 int MG_F_CLOSE_IMMEDIATELY ; 
 int MG_F_CONNECTING ; 
 int MG_F_SSL ; 
 int MG_F_UDP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct mg_connection *nc, int err) {
  FUNC0(LL_DEBUG,
      ("%p %s://%s:%hu -> %d", nc, (nc->flags & MG_F_UDP ? "udp" : "tcp"),
       FUNC1(nc->sa.sin.sin_addr), FUNC4(nc->sa.sin.sin_port), err));
  nc->flags &= ~MG_F_CONNECTING;
  if (err != 0) {
    nc->flags |= MG_F_CLOSE_IMMEDIATELY;
  }
#if MG_ENABLE_SSL
  if (err == 0 && (nc->flags & MG_F_SSL)) {
    mg_ssl_handshake(nc);
  } else
#endif
  {
    FUNC2(nc, NULL, nc->user_data, MG_EV_CONNECT, &err);
  }
}