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
struct mg_connection {scalar_t__ sock; int flags; int /*<<< orphan*/ * listener; } ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 int MG_F_UDP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

void FUNC1(struct mg_connection *nc) {
  if (nc->sock == INVALID_SOCKET) return;
  if (!(nc->flags & MG_F_UDP)) {
    FUNC0(nc->sock);
  } else {
    /* Only close outgoing UDP sockets or listeners. */
    if (nc->listener == NULL) FUNC0(nc->sock);
  }
  nc->sock = INVALID_SOCKET;
}