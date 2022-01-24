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
struct mg_connection {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MG_F_SEND_AND_CLOSE ; 
 int /*<<< orphan*/  WEBSOCKET_OP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,int /*<<< orphan*/ ,void const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(struct mg_connection *nc, const void *data,
                        size_t len) {
  if ((int) len == ~0) {
    len = FUNC1((const char *) data);
  }
  FUNC0(nc, WEBSOCKET_OP_CLOSE, data, len);
  nc->flags |= MG_F_SEND_AND_CLOSE;
}