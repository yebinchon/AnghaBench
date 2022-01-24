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
struct mg_mgr {int dummy; } ;
struct mg_connection {int flags; } ;

/* Variables and functions */
 int MG_F_IS_WEBSOCKET ; 
 double RAND_MAX ; 
 int /*<<< orphan*/  WEBSOCKET_OP_TEXT ; 
 struct mg_connection* FUNC0 (struct mg_mgr*,struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct mg_mgr *m) {
  struct mg_connection *c;
  int memory_usage = (double) FUNC2() / RAND_MAX * 100.0;

  for (c = FUNC0(m, NULL); c != NULL; c = FUNC0(m, c)) {
    if (c->flags & MG_F_IS_WEBSOCKET) {
      FUNC1(c, WEBSOCKET_OP_TEXT, "%d", memory_usage);
    }
  }
}