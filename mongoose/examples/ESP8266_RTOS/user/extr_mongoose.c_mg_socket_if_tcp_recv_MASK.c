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
struct mg_connection {int /*<<< orphan*/  flags; int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MG_F_SEND_AND_CLOSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct mg_connection *nc, void *buf,
                                 size_t len) {
  int n = (int) FUNC0(nc->sock, buf, len, 0);
  if (n == 0) {
    /* Orderly shutdown of the socket, try flushing output. */
    nc->flags |= MG_F_SEND_AND_CLOSE;
  } else if (n < 0 && !FUNC1()) {
    n = 0;
  }
  return n;
}